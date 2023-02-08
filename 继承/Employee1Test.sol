// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Employee1 {
    function getSalary() public pure returns(int) {
        return 1;
    }
}

contract Employee2 {
    function getSalary() public pure returns(int) {
        return 1;
    }
}

contract Manager is Employee1, Employee2 {    
}