/* A dense switch, which is what makes a compiler emit a jump table.
 *
 * Every other fixture here branches, loops or calls, so the one control-flow
 * shape that needs indirect-target resolution was not exercised at all: a table
 * of addresses indexed by the switch value, reached by `jmp qword ptr [..]`.
 * The eight cases are contiguous on purpose, because that is what gcc turns
 * into a table rather than a chain of comparisons.
 */
int __declspec(dllexport) dispatch(int op, int a, int b) {
    switch (op) {
        case 0: return a + b;
        case 1: return a - b;
        case 2: return a * b;
        case 3: return a & b;
        case 4: return a | b;
        case 5: return a ^ b;
        case 6: return a << (b & 31);
        case 7: return a >> (b & 31);
        default: return -1;
    }
}

/* A sparse switch, which gcc compiles differently from the dense one above. */
int __declspec(dllexport) sparse(int op, int a) {
    switch (op) {
        case 0: return a;
        case 100: return a + 1;
        case 1000: return a + 2;
        case 10000: return a + 3;
        default: return -1;
    }
}
