// SPDX-License-Identifier: MIT
pragma solidity ^0.4.4;

contract addressBalance {

    function getBalance(address addr) constant returns (uint) {
        return addr.balance;
    }

    function getBalance1() constant returns (uint) {
        return this.balance;
    }

    function getContractAddress() constant returns (address) {
        return this;
    }
    
}