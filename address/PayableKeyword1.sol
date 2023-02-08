// SPDX-License-Identifier: MIT
pragma solidity ^0.4.4;

contract PayableKeyword {

    function deposit() payable returns(bool) {
        address Account2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        return Account2.send(msg.value);
    }

    function getAccount2Balance() constant returns(uint) {
        address Account2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        return Account2.balance;
    }

    function getOwnerBalance() constant returns(uint) {
        address Owner = msg.sender;
        return Owner.balance;
    }

}