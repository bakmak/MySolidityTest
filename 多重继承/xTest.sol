// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    function x() external pure returns(string memory) {
        return "x";
    }
}

contract Y {
    function y() external pure returns(string memory) {
        return "y";
    }
}

contract Z is X, Y {
    function z() external pure returns(string memory) {
        return "z";
    }
}