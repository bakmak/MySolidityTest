// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface DataFeed { function getData(address token) external returns(uint value); }

contract FeeConsumer {
    DataFeed feed;
    uint errorCount;
    function rate(address token) public returns(uint value, bool success) {
        //  如果外部合约调用错误次数超过 10 次，就不再进行更多调用了
        require(errorCount < 10);
        try feed.getData(token) returns(uint v) {
            return (v, true);
        } catch Error(string memory /* 出错原因 */) {
            //  这块代码只有在对 DataFeed 调用失败时才会执行，通常是不满足外部合约 require 语句条件或触发 revert 语句时所引起的调用失败
            errorCount++;
            return (0, false);
        } catch (bytes memory) {
            //  当外部调用触发 assert 语句或除 0 等比较严重错误时会执行这个 catch 块
            errorCount++;
            return (0, false);
        }
    }
}