// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BreakExample {
    mapping(uint => uint) public numbers;

    function fillNumbers(uint _counter) public payable returns(uint) {
        for (uint i = 0; i < _counter; i++) {
            if (i == 5) {
                break;
            }
            numbers[i] = i * 2;
        }
        return numbers[_counter-1];
    }
}