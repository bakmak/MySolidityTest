// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    address public owner;

    event log(address);

    constructor() {
        owner = msg.sender;
        emit log(msg.sender);
        emit log(address(this));
    }
}