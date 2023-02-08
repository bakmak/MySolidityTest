// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Person {
    string public name;
    uint public age;

    function getSalary() external pure virtual returns(uint) {
        return 123;
    }
}

contract Employee is Person {
    function getSalary() external pure override returns(uint) {
        return 3000;
    }
}
