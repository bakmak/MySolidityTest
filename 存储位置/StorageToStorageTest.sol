// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageToStorageTest {
    struct S {
        string a;
        uint b;
    }

    //  默认是 storage 的
    S s;
    function storageTest(S storage s) internal {
        S test = s;
        test.a = "Test";
    }

    function call() returns (string) {
        storageTest(s);
        return s.a;
    }

}