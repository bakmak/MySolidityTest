// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Kill {
    constructor() payable {}

    function kill(address payable to) external {
        selfdestruct(to);
    }

}


contract Receive {
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}