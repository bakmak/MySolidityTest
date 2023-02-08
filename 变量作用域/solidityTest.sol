// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract C {
    uint public data = 30;
    uint internal iData = 20;
    uint private eData = 10;

    function x() public returns (uint) {
        data = 3;   
        iData = 2;      //  内部访问
        eData = 1;      //  内部访问
        return data;
    }

}

contract Caller {   //  调用外部合约
    C c = new C();
    function f() public view returns (uint) {
        return c.data();    //  外部访问
        // return c.iData(); // error 不允许外部访问
        // return c.pData(); // error 不允许外部访问
    }
}

contract D is C {   //  派生合约
    uint storedData;    //  状态变量

    function y() public returns (uint) {
        data = 3;   //  派生合约内部访问
        iData = 2;  //  派生合约内部访问
        //  pData = 1;  //  error 不允许派生合约内部访问
        return iData;
    }

    function getResult() public view returns (uint) {
        return storedData;  //  访问状态变量
    }
}

