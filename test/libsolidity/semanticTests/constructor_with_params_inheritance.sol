contract C {
    uint public i;
    uint public k;

    constructor(uint newI, uint newK) {
        i = newI;
        k = newK;
    }
}
contract D is C {
    constructor(uint newI, uint newK) C(newI, newK + 1) {}
}
// ====
// compileViaYul: also
// ----
// constructor(): 2, 0 ->
// gas ir: 218871
// gas irOptimized: 156230
// gas legacy: 152968
// gas legacyOptimized: 137314
// i() -> 2
// k() -> 1
