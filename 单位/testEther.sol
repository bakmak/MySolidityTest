// SPDX-License-Identifier: MIT 
pragma solidity ^0.4.20;

//  对 以太币 Ether 的几个单位测试
contract testEther {
    
    uint public balance;    //  定义全局变量

    function testEther() public {
        balance = 1 ether;  // 1000000000000000000
    }

    function fFinney() public {
        balance = 1 finney; // 1000000000000000
    }

    function fSzabo() public {
        balance = 1 szabo;  // 1000000000000
    }

    function fWei() public {
        balance = 1 wei;    //  1
    }

}