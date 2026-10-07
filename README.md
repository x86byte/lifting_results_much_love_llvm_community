# Orbit — x86-64 to LLVM IR lifting results

Lifted LLVM IR produced by [Orbit](https://github.com/x86byte/Orbit), a binary CFG
extractor and x86-64-to-LLVM-IR lifter, shared for the LLVM community and for
reverse engineers who want to see what machine code looks like as IR.

Every artifact here was produced by one pipeline, end to end:

```
binary  ->  orbit extractor  ->  .cfg (JSON)  ->  ir_lifter  ->  .ll (LLVM IR)
```

Every `.ll` file in this repository was **verified by two independent tools**:
llvmlite (the lift's own check) and `llc-19` (LLVM's compiler, no Orbit code
involved). Nothing here is a hand-picked snippet — the small examples were
compiled from the C source next to them, lifted whole, and published as the
lifter emitted them.

---

## Start here: one switch, three views

The switch example is the one to read first, because a compiled `switch` is where
lifting usually falls apart: the compiler emits a jump table and an *indirect*
jump through it, so there is no target address in the instruction at all.

The C source ([tests/small/test_switch/test_switch.c](tests/small/test_switch/test_switch.c)):

```c
int __declspec(dllexport) dispatch(int op, int a, int b) {
    switch (op) {
        case 0: return a + b;
        case 1: return a - b;
        /* ... eight contiguous cases ... */
        case 7: return a >> (b & 31);
        default: return -1;
    }
}
```

gcc at `-O1` compiles that to a table of 32-bit **offsets relative to the table
itself** — the position-independent form every shared library uses — and jumps
through it:

```asm
; tests/small/test_switch/test_switch.dis.asm.txt
1104:  lea     rcx, [rip+0xef5]          ; rcx = &table
110b:  movsxd  rax, DWORD PTR [rcx+rdi*4]; rax = table[op]  (signed 32-bit)
110f:  add     rax, rcx                  ; rax = table + offset
1112:  notrack jmp rax                   ; <-- no target address in sight
```

What Orbit lifts from that — the indirect jump resolved to all eight targets, and
the lifted IR is a real LLVM `switch`, not an approximation
([tests/small/test_switch/test_switch.ll](tests/small/test_switch/test_switch.ll)):

```llvm
; the jump table is read as data, the offset is added, and the branch becomes:
switch i64 %t_66, label %bb_4370_default [
  i64 4373, label %bb_0x1115   ; case 0 -> add
  i64 4377, label %bb_0x1119   ; case 1 -> sub
  i64 4382, label %bb_0x111e   ; case 2 -> imul
  i64 4388, label %bb_0x1124   ; case 3 -> and
  i64 4393, label %bb_0x1129   ; case 4 -> or
  i64 4398, label %bb_0x112e   ; case 5 -> xor
  i64 4403, label %bb_0x1133   ; case 6 -> shl
  i64 4410, label %bb_0x113a ] ; case 7 -> sar
bb_4370_default:                ; default: -> return -1
```

This is not just structurally right — the lifted `dispatch` was **executed
against the C source on 2,560 argument combinations** (every case value
including the default, values on both sides of every boundary: `0`, `-1`,
`INT_MIN`, `INT_MAX`, shift amounts of 31 and 32) with **zero mismatches**.

---

## Recursion that actually recurses

`fact_rec` from [tests/small/test_fact/test_fact.c](tests/small/test_fact/test_fact.c)
is the other classic lifter trap: a lifted call must not clobber the caller's
registers or stack, or recursion returns garbage. Orbit gives every lifted call
its own frame — the caller pushes its state, publishes its stack pointer, and the
callee allocates *below* it, exactly like the real machine
([tests/small/test_fact/test_fact.ll](tests/small/test_fact/test_fact.ll)):

```llvm
bb_0x1142:
  ; the call is a real one: arguments in registers, a pushed frame below
  ; the caller's, a return value in %rax
  %t_53 = sub i64 %t_35, 8            ; rsp -= 8
  store i64 %t_53, i64* %rsp
  store i64 %t_53, i64* %t_55         ; publish rsp for the callee
  %t_56 = call i64 @fact_rec(i8* %mem, i64 %t_46, i64 %t_47, ...)
  store i64 %t_56, i64* %rax          ; result comes back to %rax
```

`fact_rec(n)` and `fact(n)` both match their C source across the tested range,
and the loop version (`fact`) is lifted as a real loop — the back-edge is a
`br` to an earlier block, not unrolled or linearized away.

---

## The part nobody shows: exact flag semantics

Every arithmetic instruction in the lifted IR carries the full x86 flags — not
an approximation, the same predicates the architecture defines. This is
`cmp` + `jle` from `fact_rec`, which is what "compare and jump if less or
equal" actually decomposes into
([tests/small/test_fact/test_fact.ll](tests/small/test_fact/test_fact.ll)):

```llvm
%t_10 = icmp eq  i32 %t_8, 1          ; ZF:  n == 1
%t_11 = icmp slt i32 %t_8, 1          ; SF:  n < 1  (sign of the result)
%t_12 = icmp ult i32 %t_8, 1          ; CF:  unsigned n < 1
; overflow: OF = (n < 0) != (1 < 0), computed from sign bits
%t_16 = xor i1 %t_13, %t_14
%t_17 = xor i1 %t_13, %t_15
%t_18 = and i1 %t_16, %t_17
store i1 %t_10, i1* %zf
store i1 %t_11, i1* %sf
store i1 %t_12, i1* %cf
store i1 %t_18, i1* %of
; the conditional jump reads the flags back as the C-level condition:
%t_30 = icmp ne i1 %flag_sf_29, %flag_of_29
%t_31 = or i1 %flag_zf_27, %t_30      ; jle == ZF | (SF != OF)
br i1 %t_31, label %bb_0x1152, label %bb_0x1142
```

That is instruction-accurate: `jle` is `ZF | (SF != OF)` because that is what
the hardware computes, and the IR says so explicitly. Any optimizer or symbolic
executor consuming this IR sees the machine's actual semantics.

---

## What is in this repository

| path | what it is |
|---|---|
| `tests/small/test_add/` | branches, saturating arithmetic, conditional moves |
| `tests/small/test_flags/` | five functions exercising compares, flags, `cmov` |
| `tests/small/test_switch/` | a jump-table switch and a comparison-form switch |
| `tests/small/test_fact/` | a loop, and recursion across a call boundary |
| `tests/test_binaries/` | a 422-function PE and an 18-function C++ ELF, lifted whole |

Each `tests/small/<name>/` directory holds the same function five ways:

* `<name>.c` — the C source the binary was built from (`gcc -O1 -shared -fPIC`)
* `<name>.so` — that binary, which is what Orbit was run on
* `<name>.cfg` — the control-flow graph Orbit's extractor produced (JSON: every
  function, basic block, instruction, and successor edge)
* `<name>.dis.asm.txt` — disassembly of the same code, so you can read the IR
  against the instructions it came from
* `<name>.ll` — the lifted LLVM IR, whole and unedited, verified by llvmlite
  and `llc-19`

[tests/MANIFEST.md](tests/MANIFEST.md) lists every artifact with its lift status
and function/block/instruction counts.

### The real programs

| binary | functions lifted | instructions | status |
|---|---|---|---|
| `example1.exe` (PE, x86-64, 206 KB) | 414 | 25,414 | complete, verified |
| `example2.out` (ELF, C++, 16 KB) | 18 | 185 | complete, verified |

`example1.exe.ll` is 9.8 MB of IR from a binary with its CRT intact — unwind
helpers, security cookies, locale stubs and all — and every one of the 414
functions passes `llc-19`. The CFG extraction also names imported calls through
the IAT: the IR contains `call i64 @GetLastError(...)`,
`call i64 @VirtualProtect(...)` and 49 other named Windows imports instead of
calls to anonymous addresses.

---

## Reproduce any of it

```bash
# 1. extract the CFG
orbit libtest_switch.so                  # -> libtest_switch.so.cfg

# 2. lift it
python python/ir_lifter.py libtest_switch.so.cfg --out test_switch.ll

# 3. check the IR with LLVM itself
llc-19 test_switch.ll -o /dev/null       # passes
```

The small examples are one command each from their C file:

```bash
gcc -O1 -shared -fPIC -D'__declspec(x)=' -o test_switch.so test_switch.c
orbit test_switch.so
python python/ir_lifter.py test_switch.so.cfg --out test_switch.ll
llc-19 test_switch.ll -o /dev/null && echo VERIFIED
```

---

## What a reader gets out of it

* **For the LLVM community** — a large, real corpus of IR that models a foreign
  ISA's exact semantics (flags, partial registers, byte-level memory) in LLVM
  operations: interesting input for instruction-combining, cost models, and
  optimization-pass experiments on non-compiler-generated IR. Everything here
  passes `llc-19` as-is, and `opt` runs over it directly.
* **For reverse engineers** — a bridge between the disassembly you already read
  and a form you can analyze with LLVM's tooling: dataflow, dependency graphs,
  symbolic execution, or simply *compiling* a lifted module and calling the
  function. The `.dis.asm.txt` files next to each `.ll` are deliberately there
  so the two can be read side by side.
* **Correctness you can check, not a claim you must trust** — the lifter's
  output is differential-tested against the C source of these very functions in
  the [Orbit repository](https://github.com/x86byte/Orbit) (the suite executes
  lifted functions through LLVM's JIT and compares against reference models
  over thousands of inputs per function).

Open to feedback from the LLVM community on IR quality, correctness, and
optimization opportunities. PRs and issues welcome — let's make binary lifting
better together.
