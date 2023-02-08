// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract test {
    function getResult() public view returns(uint product, uint sum) {
        uint a = 1;         //  局部变量
        uint b = 2;
        product = a * b;    //  使用返回参数返回值
        sum = a + b;        
        return (product, sum);

        // return (a*b, a+b);  //  也可以使用return返回多个值
    }
}