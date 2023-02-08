// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    bool public flag;
    function setFlag() external {
        //  判断调用者地址，是否等于当前合约地址，成立则继续运行。
        require(msg.sender == address(this));
        flag = true;
    }
}