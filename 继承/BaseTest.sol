// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    uint a;
    constructor(uint _a) {
        a = _a;
    }
}

contract Derive is Base(1) {
    function getBasePara() external view returns(uint) {
        return a;
    }
}