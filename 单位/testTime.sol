// SPDX-License-Identifier: MIT 
pragma solidity ^0.4.20;

//  对 Time 单位进行测试
contract testTime {
    //  定义全局变量
    uint time;

    function testTime() public {
        time = 100000000;
    }

    function fSeconds() public view returns(uint) {
        return time + 1 seconds;    //  100000001
    }

    function fMinutes() public view returns(uint) {
        return time + 1 minutes;    //  100000060
    }

    function fHours() public view returns(uint) {
        return time + 1 hours;      //  100003600  
    }

    function fWeeks() public view returns(uint) {
        return time + 1 weeks;      //  100604800
    }

    function fYears() public view returns(uint) {
        return time + 1 years;      //  131536000
    }   

}
