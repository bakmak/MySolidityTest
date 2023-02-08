// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract cs {
    constructor() payable {
    }

    function getETH() public{
        require(address(this).balance>=1 ether,"no money");
        address payable _owner = msg.sender;
        _owner.transfer(1 ether);
    }

    fallback() external {
    }

    receive() payable external {
    }
}