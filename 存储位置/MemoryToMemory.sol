// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract MemoryToMemory{

    struct S {
        string a;
        uint n;
    }

    function smemoryTest(S s) internal {
        S memory test = s;
        test.a = "Test";
    }

    function call() returns (string) {
        //  默认是 storage 的
        S memory s = S("memory",10);
        smemoryTest(s);
        return s.a;
    }

}