// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVariable {

    struct S{
        string a;
        uint b;
    }

    //  状态变量，默认是 storage
    S s;

}
