// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Employee {

    function count() internal pure returns(uint) {
        return 2;
    }

    function test() public pure returns(uint) {
        return count();
    }

}