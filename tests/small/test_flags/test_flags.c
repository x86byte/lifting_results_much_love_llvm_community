int __declspec(dllexport) max(int a, int b) {
    return (a > b) ? a : b;
}

int __declspec(dllexport) min(int a, int b) {
    return (a < b) ? a : b;
}

int __declspec(dllexport) abs_val(int x) {
    if (x < 0) return -x;
    return x;
}

int __declspec(dllexport) cmp_branch(int a, int b, int c, int d) {
    if (a == b) return c + d;
    if (a > b) return c - d;
    if (a < b) return c * d;
    return 0;
}

unsigned __declspec(dllexport) ucmp(unsigned a, unsigned b) {
    if (a > b) return 1;
    if (a < b) return 2;
    return 0;
}
