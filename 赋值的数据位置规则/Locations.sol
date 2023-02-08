// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locations {
    //  storage
    uint stateVar = 10;

    function _do() public returns(uint) {
        uint localVar = 20; //  memory
        stateVar = localVar;
        localVar = 40;

        return stateVar;    //  return 20
    }

}