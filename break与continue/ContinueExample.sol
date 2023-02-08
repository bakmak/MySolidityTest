// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContinueExample {
    mapping(uint => uint) public numbers;

    function fillNumbers(uint counter) public payable returns(uint) {
        for (uint i = 0; i < counter; i++) {
            if (i % 2 == 0) {
                continue;
            }
            numbers[i] = i * 2;
        }
        return numbers[counter - 1];
    }
}