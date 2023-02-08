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

//  编写一个新的构造函数，传递参数给基类
contract Z is X,Y {
    constructor(string memory _name, string memory _value) X(_name) Y(_value) {
    }
}