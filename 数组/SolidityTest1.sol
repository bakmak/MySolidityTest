// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    function getMemoryArr() external pure returns(uint[] memory) {
        uint[] memory arr = new uint[](3);
        arr[0] = 1;
        return arr;
    }
}