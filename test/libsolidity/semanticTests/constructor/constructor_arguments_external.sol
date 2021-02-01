contract Main {
    bytes3 name;
    bool flag;

    constructor(bytes3 x, bool f) {
        name = x;
        flag = f;
    }

    function getName() public returns (bytes3 ret) {
        return name;
    }

    function getFlag() public returns (bool ret) {
        return flag;
    }
}
// ====
// compileViaYul: also
// ----
// constructor(): "abc", true
// gas ir: 240784
// gas irOptimized: 146664
// gas legacy: 163828
// gas legacyOptimized: 128603
// getFlag() -> true
// getName() -> "abc"
