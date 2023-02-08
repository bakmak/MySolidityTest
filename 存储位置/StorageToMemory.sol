// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract StorageToMemory {

    struct S {
        string a;
        uint b;
    }

    S s = S("storage",1);

    function storageToMemory(S storage x) internal {
        S memory tmp = x;   //  由 storage 拷贝到 memory 中
        tmp.a = "Test";     //  memory 的修改不影响 storage
    }

    function call() returns (string) {
        storageToMemory(s);
        return s.a;         //  storage
    }

}