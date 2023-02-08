// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    function foo() external pure virtual returns(string memory) {
        return "x foo";
    }

    function bar() external pure virtual returns(string memory) {
        return "x bar";
    }

    function x() external pure returns(string memory) {
        return "x";
    }
}

contract Y is X {
    function foo() external pure virtual override returns(string memory) {
        return "y foo";
    }

    function bar() external pure virtual override returns(string memory) {
        return "y bar";
    }

    function y() external pure returns(string memory) {
        return "y";
    }
}

contract Z is X,Y {
    function foo() external pure override(X,Y) returns(string memory) {
        return "z foo";
    }

    function bar() external pure override(X,Y) returns(string memory) {
        return "z bar";
    }

    function z() external pure returns(string memory) {
        return "z";
    }
}