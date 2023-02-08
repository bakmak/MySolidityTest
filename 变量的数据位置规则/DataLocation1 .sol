// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocation {
    //  storage
    uint stateVariable;
    uint[] stateArray;

    function calculate(uint num1, uint num2) public pure returns (uint result) {
        return num1 + num2;
    }

}