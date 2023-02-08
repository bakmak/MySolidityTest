// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hash {
    function encode1() external pure returns(bytes memory) {
        return abi.encodePacked("aa","bb");
    }

    function encode2() external pure returns(bytes memory) {
        return abi.encodePacked("aab","b");
    }
}