// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Locations {
    /* 此处都是状态变量 */
    //  存储在 storage 中
    bool flag;
    uint number;
    address account;

    function doSomething() public pure {
        /* 此处都是局部变量 */
        //  值类型
        //  所以它们被存储在内存中
        bool flag2;
        uint number2;
        address account2;

        //  引用类型，需要显示指定数据位置，此处指定为内存
        uint[] memory localArray;
    }

}