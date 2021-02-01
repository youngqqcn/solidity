contract C {
    constructor() {}
    function f() public returns (uint) {
        return block.number;
    }
}
// ====
// compileViaYul: also
// ----
// constructor()
// gas ir: 129214
// f() -> 2
// f() -> 3
