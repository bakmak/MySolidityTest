// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locations {
    uint public stateVar1 = 10;
    uint public stateVar2 = 20;

    function _do() public returns(uint) {
        stateVar1 = stateVar2;
        stateVar2 = 30;
        return stateVar1;   //  return 20
    } 

}