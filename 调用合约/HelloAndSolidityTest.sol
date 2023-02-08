// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hello {
    function echo() external payable returns(string memory) {
        return "Hello World!";
    }
}


contract SolidityTest {
    function callHello(address addr) external pure returns(string memory) {
        return Hello(addr).echo();    // 调用外部合约 Hello 的方法 echo  
    }

    //  另一种写法
    function callHelloOr(Hello hello) external pure returns(string memory) {
        return hello.echo();        //  调用外部合约 Hello 的方法 echo
    }
}