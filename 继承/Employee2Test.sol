// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Employee {
    function getSalary() public pure returns(int) {
        return 1;
    }
}

contract Manager is Employee {
    function getSalary() public pure returns(int) {
        return 2;
    }    
}