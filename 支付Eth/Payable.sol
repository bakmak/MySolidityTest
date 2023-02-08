// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Payable {
    //  owner 可用于收费 eth
    address payable public owner;
    
    constructor() {
        //  msg.sender 默认不能收发 eth，需要转换  
        owner = payable(msg.sender);
    }

    function deposit() external payable {
    }
}