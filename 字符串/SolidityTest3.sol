// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    constructor(){
    }

    function getResult(string memory s) public pure returns(bytes memory) {
        return bytes(s);    //  字符串转到bytes
    }
}
