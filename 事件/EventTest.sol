// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventTest {
    //  定义 envent
    event Log(string, uint);

    function operations() external {
        //  触发 event
        emit Log("Info",123);
    }
}