// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Employee {
    function getSalary() public pure virtual returns(int);
} 

contract Manager is Employee {
    function getSalary() public pure override returns(int) {
        return 2000;
    }
}