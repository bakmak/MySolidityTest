// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Math {
    function add(uint x, uint y) internal pure returns(uint) {
        return x + y;
    } 
}

contract MathTest {
    function test(uint x, uint y) external pure returns(uint) {
        return Math.add(x,y);
    }
}