// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    event log(string message);

    function foo() public virtual {
        emit log("X.foo");
    }
}

contract Y is X {
    function foo() public virtual override {
        emit log("Y foo");
        super.foo();
    }
}

contract Z is X {
    function foo() public virtual override {
        emit log("Z foo");
        super.foo();
    }
}

contract T is Y,Z {
    function foo() public override(Y,Z) {
        super.foo();
    }
}