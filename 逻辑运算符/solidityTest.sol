// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogicalOperations {
    bool private a;
    bool private b;

    constructor() public {
        a = true;
        b = false;
    }

    function andOperation() public view returns (bool) {
        return a && b;
    }

    function orOperation() public view returns (bool) {
        return a || b;
    }

    function notOperation() public view returns (bool) {
        return !a;
    }
}