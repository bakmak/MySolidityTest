// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewDemo {
    uint factor = 2;    // 状态变量

    function getResult(uint num) public view returns(uint) {
        uint result = num * factor;
        return result;
    }
}