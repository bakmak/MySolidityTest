// SPDX-License-Identifier: MIT
pragma solidity ^0.4.4;

contract Test {

    address public _owner;

    uint public _number;

    function Test() {
        _owner = msg.sender;
        _number = 100;
    }

    function msgSenderAddress() constant returns(address) {
        return msg.sender;
    }

    function setNumberAdd1() {
        _number = _number + 5;
    }

    function setNumberAdd2() {
        if (_owner == msg.sender) {
            _number = _number + 10;
        }
    }

    function returnContractAddress() constant returns(address) {
        return this;
    }

}