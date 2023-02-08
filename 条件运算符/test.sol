// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint x = 5;
    uint y = 10;

    function exampleFunction() public view returns(uint) {
        return (x > y) ? x : y;
    }
}
