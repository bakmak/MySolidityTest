// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locations {
    uint stateVar = 10; //  storage

    function _do() public returns(uint) {
        uint localVar = 20; //  storage

        localVar = stateVar;
        stateVar = 40;

        return localVar;    //  return 10
    }
}