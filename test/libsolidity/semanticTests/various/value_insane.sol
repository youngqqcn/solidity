contract helper {
    function getBalance() public payable returns (uint256 myBalance) {
        return address(this).balance;
    }
}


contract test {
    helper h;

    constructor() payable {
        h = new helper();
    }

    function sendAmount(uint256 amount) public returns (uint256 bal) {
        return h.getBalance{value: amount + 3, gas: 1000}();
    }
}

// ====
// compileViaYul: also
// ----
// constructor(), 20 wei ->
// gas ir: 403458
// gas irOptimized: 203922
// gas legacy: 303302
// gas legacyOptimized: 230474
// sendAmount(uint256): 5 -> 8
