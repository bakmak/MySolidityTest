// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Math {      
    //  该函数是输入元素进行匹配数组下标
    function find(uint[] storage arr, uint val) internal view returns(uint) {
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] == val) {
                return i;
            }
        }
        revert("not found");
    }
}

contract MathTest {
    //  将 library Math 附着到类型 uint[]
    using Math for uint[];

    uint[] arr = [1,2,3];

    function test() external view returns(uint) {
        return arr.find(3);
    }
}