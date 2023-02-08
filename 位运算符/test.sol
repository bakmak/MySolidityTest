// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseOperations {
    function shiftLeft(uint x, uint y) public pure returns (uint) {
        return x << y;
    }

    function shiftRight(uint x, uint y) public pure returns (uint) {
        return x >> y;
    }

    function bitwiseAnd(uint x, uint y) public pure returns (uint) {
        return x & y;
    }

    function bitwiseOr(uint x, uint y) public pure returns (uint) {
        return x | y;
    }

    function bitwiseXor(uint x, uint y) public pure returns (uint) {
        return x ^ y;
    }

    function bitwiseNot(uint x) public pure returns (uint) {
        return ~x;
    }
}
