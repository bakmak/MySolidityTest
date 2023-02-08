// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Receive {
    event eventFallback(string);

    fallback() external payable {
        emit eventFallback("fallback");
    }

    receive() external payable {
        emit eventFallback("receive");
    }

    //  查看合约账户余额
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

}