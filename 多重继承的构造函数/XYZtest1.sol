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

//  混写方式
contract Z is X("n"), Y {
    constructor(string memory _value) Y(_value) {
    }
}