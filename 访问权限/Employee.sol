// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Employee {

    function count() private pure returns(uint) {
        return 2;
    }

}


contract Manager is Employee {

    function test() private pure returns(uint) {
        return count();
    }

}