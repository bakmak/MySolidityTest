// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract addressTest {

    // function getBalance(address addr) view returns(uint) {
    //     return addr.balance;
    // }

    // address public _owner;

    // function Test() {
    //     _owner = msg.sender;
    // }

    address public _owner;

    function Test() {
        _owner = msg.sender;
    }

    function returnContractAddress() constant returns(address) {
        return this;
    }

}


contract FuntionTest {
    function internalFunc() internal {}
    function externalFunc() external {}
    function callFunc() {
        //  直接使用内部的方式调用
        internalFunc();
        //  不能在内部调用一个外部函数，会编译错误
        // externalFunc();
        //  不能通过'external'的方式调用一个'internal'
        // this.internalFunc();
        //  使用'this'以'external'的方式调用一个外部函数
        this.externalFunc();
    }
}


contract FuntionTest1 {
    function externalCall(FuntionTest ft) {
        //  调用另一个合约的外部函数
        ft.externalFunc();
        //  不能调用另一个合约的内部函数
        // ft.internalFunc();
    }
}


contract SimpleFallback {
    function() {
        // fallback function 
    }
}