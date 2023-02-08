// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageToStorageTest {
    struct S {
        string a;
        uint b;
    }

    //  默认是 storage
    S s;
    function storageTest(S s) internal {
        s = s;
        s.a = "Test";
    }

    function call() returns (string) {
        storageTest(s);
        return s.a;
    }
}