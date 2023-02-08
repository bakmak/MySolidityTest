// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public value;
    constructor(string memory _value) {
        value = _value;
    }
}

//  派生类的继承声明中，直接传递参数给基类的构造函数
contract Z is X("n"), Y("v") {
}