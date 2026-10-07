| artifact | what it is |
|---|---|
| `tests/small/test_add/test_add.c` | the C source the binary was built from |
| `tests/small/test_add/test_add.so` | the compiled binary Orbit was run on |
| `tests/small/test_add/test_add.cfg` | the CFG Orbit's extractor produced |
| `tests/small/test_add/test_add.ll` | lifted IR - complete (12 functions, 32 blocks, 106 instructions), verified by llvmlite and llc-19 |
| `tests/small/test_add/test_add.dis.asm.txt` | disassembly of the same code, to read against the IR |
| `tests/small/test_flags/test_flags.c` | the C source the binary was built from |
| `tests/small/test_flags/test_flags.so` | the compiled binary Orbit was run on |
| `tests/small/test_flags/test_flags.cfg` | the CFG Orbit's extractor produced |
| `tests/small/test_flags/test_flags.ll` | lifted IR - complete (14 functions, 34 blocks, 115 instructions), verified by llvmlite and llc-19 |
| `tests/small/test_flags/test_flags.dis.asm.txt` | disassembly of the same code, to read against the IR |
| `tests/small/test_switch/test_switch.c` | the C source the binary was built from |
| `tests/small/test_switch/test_switch.so` | the compiled binary Orbit was run on |
| `tests/small/test_switch/test_switch.cfg` | the CFG Orbit's extractor produced |
| `tests/small/test_switch/test_switch.ll` | lifted IR - complete (11 functions, 43 blocks, 134 instructions), verified by llvmlite and llc-19 |
| `tests/small/test_switch/test_switch.dis.asm.txt` | disassembly of the same code, to read against the IR |
| `tests/small/test_fact/test_fact.c` | the C source the binary was built from |
| `tests/small/test_fact/test_fact.so` | the compiled binary Orbit was run on |
| `tests/small/test_fact/test_fact.cfg` | the CFG Orbit's extractor produced |
| `tests/small/test_fact/test_fact.ll` | lifted IR - complete (11 functions, 33 blocks, 110 instructions), verified by llvmlite and llc-19 |
| `tests/small/test_fact/test_fact.dis.asm.txt` | disassembly of the same code, to read against the IR |
| `tests/test_binaries/example1.exe` | a 422-function PE executable: real code, CRT and all |
| `tests/test_binaries/example1.exe.cfg` | re-extracted with today's extractor |
| `tests/test_binaries/example1.exe.ll` | lifted IR - complete (414 functions, 25414 instructions), verified by llvmlite and llc-19 |
| `tests/test_binaries/example2.out` | an 18-function C++ ELF executable |
| `tests/test_binaries/example2.out.cfg` | re-extracted with today's extractor |
| `tests/test_binaries/example2.out.ll` | lifted IR - complete (18 functions, 185 instructions), verified by llvmlite and llc-19 |
