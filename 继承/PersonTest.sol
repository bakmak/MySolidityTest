// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Person {
    string public name;
    uint public age;
    function getSalary() external pure returns(uint) {
        return 0;
    }
}

contract Employee is Person {
    
}