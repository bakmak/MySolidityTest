// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImmutableTest {
    address public immutable owner;

    constructor(address _owner) {
        owner = _owner;
    } 
}