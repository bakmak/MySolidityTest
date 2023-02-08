// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierTest {
    bool public paused;
    uint public counter;

    function setPaused(bool _paused) external {
        paused = _paused;
    }

    //  检查前置条件：判断paused是否被设置，如果paused为true，那么终止执行。
    modifier isNotPaused() {
        require(!paused);     
        //  执行被isNotPaused修饰的函数
        _;
    }

    function add() external isNotPaused {
        counter++;
    }
}