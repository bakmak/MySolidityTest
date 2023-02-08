// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Manager {

    function count() external pure returns(uint) {
        return 2;
    }

    function test() public pure returns(uint) {
        return count;
    }

}