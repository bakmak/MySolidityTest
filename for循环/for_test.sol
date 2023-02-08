// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint private counter;
    mapping(uint => uint) public numbers;

    function setCounter(uint _counter) public {
        counter = _counter;
    }

    function fillNumbers() public payable returns(uint) {
        for(uint i = 0; i < counter; i++) {
            numbers[i] = i * 2;
        }
        return numbers[counter-1];
    }
}