// SPDX-License-Identifier: MIT
pragma solidity ^0.4.4;

contract PayableKeyword {

    //  从合约发起方向 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB 地址转入 msg.value 个以太币，单位是 wei
    function deposit() payable {
        address Account2 = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
        Account2.transfer(msg.value);
    }

    //  读取 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB 地址的余额
    function getAccount2Balance() constant returns (uint) {
        address Account2 = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
        return Account2.balance;
    }

    //  读取合约发起方的余额
    function getOwnerBalance() constant returns (uint) {
        address Owner = msg.sender;
        return Owner.balance;
    }

}