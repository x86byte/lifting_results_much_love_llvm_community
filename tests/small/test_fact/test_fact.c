int __declspec(dllexport) fact(int n) {
    int r = 1;
    for (int i = 2; i <= n; i++)
        r = r * i;
    return r;
}

int __declspec(dllexport) fact_rec(int n) {
    if (n <= 1) return 1;
    return n * fact_rec(n - 1);
}
