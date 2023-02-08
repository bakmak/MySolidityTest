// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleAssign {
    struct S {
        string a;
        uint b;
    }

    function assign(S s) internal {
        //  函数参数默认是 memory 类型，即 s 是 memory 类型
        //  局部变量默认 storage 类型
        // S tmp = s;  //  报错
    }
}