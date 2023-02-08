// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint stateVar;

    function somPublicFun() public {}
    function somInternalFun() internal {}
    function somPrivateFun() private {}
}

contract B is A {
    function call() public {
        //  访问父类的 public 方法
        somPublicFun();

        //  访问父类的状态变量（状态变量默认是internal权限）
        stateVar = 10;

        //  访问父类的 internal 方法
        somInternalFun();

        //  不能访问 private
        // somPrivateFun();
    }
}