// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Manager {
    function count() public pure returns(int) {
        require(1 == 2);
        return 2;
    }

    function test() public view returns(string memory) {
        try this.count() {
            return "success";
        } catch Error(string memory reason/* 出错原因 */) {
            //  调用 count() 失败时执行，通常是不满足 require 语句条件或触发 revert 语句时所引起的调用失败
            return reason;
        } catch (bytes memory) {
            //  调用 count() 异常时执行，通常是触发 assert 语句或除 0 等比较严重错误时会执行
            return "assert error";
        }
    }
}