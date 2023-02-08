// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {
    address payable public owner;

    modifier onlyOwner() {
        require(msg.sender == owner,"sender is not owner");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}   //  允许存币

    //  取币
    function withdraw(uint amount) external payable onlyOwner {
        //  msg.sender 与 owner 相等，不使用 owner 可以节省 Gas
        payable(msg.sender).transfer(amount);
    }

    //  获取余额
    function getBalance() external view onlyOwner returns(uint) {
        return payable(this).balance;
    }
}