// SPDX-License-Identifier: MIT
pragma solidity ^0.4.4;

contract Test {

    address address1;
    address address2;

    function Test() {
        address1 = 0xF055775eBD516e7419ae486C1d50C682d4170645;
        address2 = 0xEAEC9B481c60e8cDc3cdF2D342082C349E5D6318;
    }

    function test1() constant returns (bool) {
        return address1 <= address2;
    }

    function test2() constant returns (bool) {
        return address1 < address2;
    }

    function test3() constant returns (bool) {
        return address1 != address2;
    }

    function test4() constant returns (bool) {
        return address1 >= address2;
    }

    function test5() constant returns (bool) {
        return address1 > address2;
    }

}