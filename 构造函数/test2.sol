// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract test {
    uint public a;
    address public owner;

    constructor(uint _a) public {
        //  将部署者地址存储到owner变量
        owner = msg.sender;
        //  将参数_a存储到a变量
        a = _a;
    }
}