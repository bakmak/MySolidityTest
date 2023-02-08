// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract cs {

    constructor() payable {
    }

    function getETH() public returns(bool) {
        address payable _owner = msg.sender;
        returns(_owner.send(1 ether));
    }

    //  如果使用 transfer 或 sned 函数必须添加 fallback 回退函数
    fallback() external {
    }

    receive() payable external {
    }

}