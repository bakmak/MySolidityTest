// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    function foo() internal pure returns(uint) {
        return 1;
    }
}

contract Z is X {
    function test() external pure returns(uint) {
        //  X 为父级合约名称，foo为父级合约的方法名称
        uint result = X.foo();
        return result;
    }
}