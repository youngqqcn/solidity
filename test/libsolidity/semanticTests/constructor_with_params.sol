contract C {
    uint public i;
    uint public k;

    constructor(uint newI, uint newK) {
        i = newI;
        k = newK;
    }
}
// ====
// compileViaYul: also
// ----
// constructor(): 2, 0 ->
// gas ir: 196673
// gas irOptimized: 135894
// gas legacy: 131588
// gas legacyOptimized: 117266
// i() -> 2
// k() -> 0
