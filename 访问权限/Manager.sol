// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Manager {

    function count() private pure returns(uint) {
        return 2;
    }

    function test() private pure returns(uint) {
        return count();
    }
    
}