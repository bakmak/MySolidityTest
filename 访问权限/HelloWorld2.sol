// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract HelloWorld {
    uint public d;

    function getValue() constant returns(uint) {
        return d;
    }
}