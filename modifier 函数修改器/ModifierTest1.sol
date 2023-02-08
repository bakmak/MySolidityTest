// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierTest {
    bool public paused;
    uint public counter;

    function setPaused(bool _paused) external {
        paused = _paused;
    }

    modifier isNotPaused(uint x) {
        // 检查前置条件：判断x是否大于10，如果x大于或者等于10，那么终止执行。
        require(x < 10);
        _;  //  执行被isNotPaused修饰的函数
    }

    function add(uint x) external isNotPaused(x) {
        counter++;
    }
}