// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LedgerBalance {

    mapping(address => uint) public balance;

    function updataBalance(uint newBalance) public {
        //  设置 mapping 的 key 和 value
        balance[msg.sender] = newBalance;
    }

    function get() public view returns(uint) {
        //  通过 key 获取 mapping 的 value
        return balance[msg.sender];
    }
}

contract Updataer {
    function updataBalance() public returns(uint) {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updataBalance(10);
        return ledgerBalance.get();
    }
}