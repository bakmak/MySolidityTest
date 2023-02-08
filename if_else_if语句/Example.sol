// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint private age;

    function setAge(uint _age) public {
        age = _age;
    } 

    function checkAge() public view returns (string memory) {
        if (age < 18) {
            return "You are a minor";
        } else if (age >= 18 && age < 65) {
            return "You are an adult";
        }else {
            return "You are a senior";
        }
    }
}