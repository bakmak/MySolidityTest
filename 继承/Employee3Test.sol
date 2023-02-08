// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Employee1 {
    uint public data = 10;
}

contract Employee2 {
    function data() public returns(uint) {
        return 1;
    }  
}

contract Manager is Employee1, Employee2 {
}