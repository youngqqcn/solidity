contract A {
    function f() public {
        new B();
    }
}


contract B {
    function f() public {}
}


contract C {
    function f() public {
        new B();
    }
}

// ====
// compileToEwasm: also
// compileViaYul: also
// ----
// constructor() ->
// gas ir: 202618
// gas irOptimized: 123331
// gas legacy: 132079
// gas legacyOptimized: 132079
