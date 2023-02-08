// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Person {
    string public name;
    uint public age;

    function getSalary() external pure virtual returns(uint) {
        return 0;
    }
}

contract Employee is Person {
    function getSalary() external pure virtual override returns(uint) {
        return 3000;
    }
}

contract Manager is Employee {
    function getSex() external pure returns(uint) {
        return 2000;
    }
}