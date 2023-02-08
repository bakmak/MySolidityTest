// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Employee {

    function count() public pure returns(uint) {
        return 2;
    }

}


contract Manager {

    function test() public returns(uint) {
        Employee e = new Employee();
        return e.count();
    }

}