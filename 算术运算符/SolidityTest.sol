// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    constructor() {
        
    }

    function getResult(uint a, uint b) public pure returns(uint) {
        //  算术运算
        uint result = a + b;
        return result;
    }
}