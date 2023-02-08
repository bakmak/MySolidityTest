// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Account {
    address public bank;
    address public owner;

    constructor(address _owner) payable {
        bank = msg.sender;
        owner = _owner;
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}


contract Factory {
    Account[] public account;

    function createAccount(address owner) external payable {
        account.push(new Account{value:123}(owner));
        account.push(new Account{value:456}(owner));
    }
}