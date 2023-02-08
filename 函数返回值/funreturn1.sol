// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract funreturn {

    //  定义多返回值函数
    function returnFunc() private pure returns(uint a, uint b) {
        return (1, 2);
    }

    //  调用多返回值函数
    function callFunc() public pure returns(uint, uint) {
        (uint r1, uint r2) = returnFunc();
        return (r1, r2);
    }

    //  调用多返回值函数，先定义变量
    function callFunc1() public pure returns(uint, uint) {
        uint r1;
        uint r2;
        (r1, r2) = returnFunc();
        return (r1, r2);
    }

    //  调用多返回值函数，但只取第一个返回值
    function callFunc2() public view returns(uint, uint) {
        (uint r1, ) = returnFunc();
        return (r1, 100);
    }
}