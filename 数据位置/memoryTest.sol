// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    
    struct MyData {
        uint id;
        string value;
    }
    MyData[] public myData;

    constructor() {
        myData.push(MyData(1,"value1"));
        myData.push(MyData(2,"value2"));
    }

    function operations() external {
        //  memory 存储位置
        MyData memory d = myData[0];

        //  修改状态变量myData的内容
        d.value = "new value";
    }

}