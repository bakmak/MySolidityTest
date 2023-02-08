// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {

    uint[] public arr = [1,2,3,4];    //  动态数组
    uint[4] public arrFixed = [1,2,3,4];    //  固定长度数组

    //  获得数组全部元素
    function getArr() external view returns(uint[] memory) {
        return arr;
    }

    //  固定长度数组操作
    function operatFixedArr() external view returns(uint) {
        // uint len = arrFixed.length;     //  获得数组长度
        // return len;
        uint x = arrFixed[1];   //  获得数组的第二个元素的值
        return x;
    }

    //  删除数组的第二个元素的值，delete只是将元素设置为初值，并不改变数组长度
    function DeleteFixedArr() external payable {
        delete arrFixed[1];
    }

    //  动态数组操作
    function operateDynamicArr() external view returns(uint) {
        // uint len = arr.length;  //  获得数组长度
        // return len;
        uint x = arr[1];    //  获得数组的第二个元素的值
        return x;
    }

    function CRUDDynamicArr() external payable {
        // arr.push(5);       //   追加一个元素，数组长度也会增加
        // arr.pop();         //   弹出一个元素
        
        //  删除数组的第二个元素的值，delete只是将元素设置为初值，并不改变数组长度
        // delete arr[1];

        removeAt(1);    //  删除数组的第二个元素，并且数组长度减1
    }

    function removeAt(uint i) public {  //  删除数组元素，并且数组长度减1
        require(i >= 0 && i < arr.length);

        for (uint k = i; k < arr.length-1; k++) {
            arr[k] = arr[k+1];
        }
        
        arr.pop();
    }

}