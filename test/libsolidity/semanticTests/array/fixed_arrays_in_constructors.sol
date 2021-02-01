contract Creator {
    uint256 public r;
    address public ch;

    constructor(address[3] memory s, uint256 x) {
        r = x;
        ch = s[2];
    }
}
// ====
// compileViaYul: also
// ----
// constructor(): 1, 2, 3, 4 ->
// gas ir: 261320
// gas irOptimized: 167868
// gas legacy: 190998
// gas legacyOptimized: 149820
// r() -> 4
// ch() -> 3
