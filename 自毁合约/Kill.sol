// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Kill {
    function kill() external {
        selfdestruct(payable(msg.sender));
    }

    function test() external pure returns(uint) {
        return 100;
    }
}