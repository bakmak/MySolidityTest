// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locations {

    function doSomething() public pure returns(uint[] memory, uint[] memory) {
        uint[] memory localMemoryArray1 = new uint[](3);
        localMemoryArray1[0] = 4;
        localMemoryArray1[1] = 5;
        localMemoryArray1[2] = 6;

        uint[] memory localMemoryArray2 = localMemoryArray1;
        localMemoryArray1[0] = 10;

        return (localMemoryArray1, localMemoryArray2);  //  return 10,5,6 | 10,5,6
    }

}