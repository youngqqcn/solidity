contract C {
    bytes public initCode;

    constructor() {
        // This should catch problems, but lets also test the case the optimiser is buggy.
        assert(address(this).code.length == 0);
        initCode = address(this).code;
    }

    // To avoid dependency on exact length.
    function f() public view returns (bool) { return address(this).code.length > 400; }
    function g() public view returns (uint) { return address(0).code.length; }
    function h() public view returns (uint) { return address(1).code.length; }
}
// ====
// compileViaYul: also
// ----
// constructor() ->
// gas ir: 389349
// gas irOptimized: 238790
// gas legacy: 260286
// gas legacyOptimized: 185040
// initCode() -> 0x20, 0
// f() -> true
// g() -> 0
// h() -> 0
