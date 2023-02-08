// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract A {

    uint data;

    function change(uint i) external {
        data = i;
    }

    function getData() public returns(uint) {
        delete data;
        return data;
    }

}