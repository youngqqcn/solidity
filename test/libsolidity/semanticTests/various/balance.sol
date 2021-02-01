contract test {
    constructor() payable {}

    function getBalance() public returns (uint256 balance) {
        return address(this).balance;
    }
}

// ====
// compileViaYul: also
// ----
// constructor(), 23 wei ->
// gas ir: 143475
// getBalance() -> 23
