// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Employee {

    function count() external pure returns(uint) {
        return 2;
    }

}


contract Manager {

    function test() external returns(uint) {
        Employee e = new Employee();
        return e.count();
    }

}
