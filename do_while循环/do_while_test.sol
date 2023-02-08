// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint private counter;

    function setCounter(uint _counter) public {
        counter = _counter;
    }

    function countDowm() public payable returns (uint) {
        do {
            counter--;
        } while (counter > 0);
        return counter;
    }
}