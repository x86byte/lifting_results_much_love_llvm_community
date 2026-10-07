int __declspec(dllexport) add(int a, int b) {
    return a + b;
}

int __declspec(dllexport) add_sat(int a, int b) {
    int r = a + b;
    // Detect signed overflow: if a>0 && b>0 && r<0 => overflow (positive -> negative)
    // if a<0 && b<0 && r>=0 => overflow (negative -> positive)
    if ((a > 0 && b > 0 && r < 0) || (a < 0 && b < 0 && r >= 0))
        return (a > 0) ? 0x7FFFFFFF : 0x80000000;
    return r;
}

int __declspec(dllexport) cond_move(int a, int b, int c) {
    if (c)
        return a;
    return b;
}
