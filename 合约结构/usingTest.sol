// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

library LibraryTest {
    function use(uint a) returns(uint) {
        return a + 1;
    }
}


contract usingTest {
    using LibraryTest for uint; //  把LibraryTest中的函数关联到uint类型
    uint test = 1;
    function testusing() returns(uint) {
        return test.use();  //  uint类型的对象实例test调用LibraryTest里的函数add()，add()会默认接收test作为第一个参数。
    }
}