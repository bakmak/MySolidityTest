// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hello {
    string name;
    
    constructor() {
        name = 'Hello World!';
    }

    function hello() view public returns (string memory) {
        return name;
    }
}