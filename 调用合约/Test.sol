// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Hello {   //  被调用者接口
    //  被调用的方法
    function echo() external pure returns(string memory);   
}

contract SolidityTest {     //  调用者合约
    function callHello(address addr) external pure returns(string memory) {
        return Hello(addr).echo();  //  // 调用外部合约Hello的方法：echo
    }
}