contract C {
    function f() public view returns (uint256) {
        return msg.sender.balance;
    }
}


contract D {
    C c = new C();

    constructor() payable {}

    function f() public view returns (uint256) {
        return c.f();
    }
}

// ====
// compileViaYul: also
// ----
// constructor(), 27 wei ->
// gas ir: 350373
// gas irOptimized: 188854
// gas legacy: 260502
// gas legacyOptimized: 215489
// f() -> 27
