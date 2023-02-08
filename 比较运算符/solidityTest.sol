// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComparisonOperators {

    uint256 x = 5;
    uint256 y = 10;

    function greaterThan() public view returns (bool) {
        return x > y;
    }

    function lessThan() public view returns (bool) {
        return x < y;
    }

    function greaterThanOrEqual() public view returns (bool) {
        return x >= y;
    }

    function lessThanOrEqual() public view returns (bool) {
        return x <= y;
    }

    function equal() public view returns (bool) {
        return x == y;
    }

    function notEqual() public view returns (bool) {
        return x != y;
    }

}