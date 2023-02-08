// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogTest {
    //  定义事件
    event Log(address);

    constructor() {
        //  调用事件
        emit Log(msg.sender);
        emit Log(address(this));
    }
}