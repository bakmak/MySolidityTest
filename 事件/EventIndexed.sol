// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventIndexed {
    //  定义 event
    event Log(address indexed, string);

    function operations() external {
        //  触发 event
        emit Log(msg.sender, "Info");
    }
}