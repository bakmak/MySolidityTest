// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locations {

    function _do() public pure returns(uint) {
        uint localVar1 = 10;    //  memory
        uint localVar2 = 20;    //  memory

        localVar1 = localVar2;
        localVar2 = 40;

        return localVar1;   //  return 20
    }

}