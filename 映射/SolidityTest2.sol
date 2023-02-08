// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LedgerBalance {

    mapping(address => uint) public balance;

    function updataBalance() public returns (uint) {
        //  mapping 局部变量 ref 引用状态变量 balance
        mapping(address => uint) storage ref = balance;
        ref[msg.sender] = 3;
        return 0;
    }

}
