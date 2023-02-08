// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;     //  版本声明
import "./Hello.sol";    //  导入声明

contract SolidityStructure {    //  合约声明

    uint balance;   //  状态变量

    address owner;

    struct Hello {  //  结构类型
        uint helloNum;
        address hello;
    }

    constructor() public {  //  构造函数
        owner = msg.sender;
    }
    // function HelloWorld() {
    // }   //  这种方式也可以

    modifier onlySeller() { //  修饰器
        require(
            msg.sender != owner
        );
        _;
    }

    function test() public {    //  函数
        uint step = 10;
        if (owner == msg.sender) {
            balance = balance + step;
        }
    }

    //  带返回值的函数
    function update(uint amount) constant returns(address, uint) {
        balance += amount;
        return (msg.sender, balance);
    }

    using LibraryTest for uint;     //  using声明

    uint a = 1;

    function getNewA() returns(uint) {
        return a.add();
    }

    function kill() {   //  析构函数
        if (owner == msg.sender) {
            selfdestruct(owner);
        }
    }

    event HighestBidIncreased(address bidder, uint amount); //  事件 log日志打印

    function bid() public payable {
        emit HighestBidIncreased(msg.sender, msg.value);    //  触发事件打印相关日志
    } 

    enum State { // 枚举
        Created, 
        Locked, 
        Inactive
    }

}


