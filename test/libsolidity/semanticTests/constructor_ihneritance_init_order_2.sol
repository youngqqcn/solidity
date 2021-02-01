contract A {
    uint x = 42;
    function f() public returns(uint256) {
        return x;
    }
}
contract B is A {
    uint public y = f();
}
// ====
// compileToEwasm: also
// compileViaYul: also
// ----
// constructor() ->
// gas ir: 230700
// gas irOptimized: 152439
// gas legacy: 149596
// gas legacyOptimized: 136048
// y() -> 42
