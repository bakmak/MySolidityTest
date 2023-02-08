// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendEther {
    constructor() payable {}

    //  允许接收 Eth 
    receive() external payable {}

    function transferEth(address payable _to) external payable {
        _to.transfer(100);
    }

    function sendEth(address payable _to) external payable {
        bool success = _to.send(100);
        require(success, "send failed");
    }

    function callEth(address payable _to) external payable {
        (bool success, ) = _to.call{value:100}("");
        require(success, "call failed");
    }

}


contract ReceiveEther {
    event log(uint amount, uint gas);

    receive() external payable {    // 允许接收 Eth
        emit log(msg.value, gasleft());
    }
}
