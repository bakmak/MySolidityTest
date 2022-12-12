// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ImportExample{

    uint public age = 80;

    string private name = "Biden";

    function getName() public view returns(string memory) {         //  获取名称的方法
        return name;
    }

}

