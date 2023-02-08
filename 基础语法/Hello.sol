// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hello {

    string message = "Hello World!";

    function helloWorld() view public returns (string memory) {
        return message;
    }

}