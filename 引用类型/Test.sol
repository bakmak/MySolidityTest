// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Test {

    bytes4 public a = 0x54657374;

    function test1() public constant returns(bytes) {
        //  创建可变字节数组
        bytes memory b = new bytes(a.length);
        for(uint i = 0; i < a.length; i++){
            b[i] = a[i];
        }
        return b;
    }

    function getString() constant returns(string) {
        return string(test1());
    }

}