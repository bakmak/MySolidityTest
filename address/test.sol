// SPDX-License-Identifier: MIT
pragma solidity ^0.4.4;

contract test {
    address _owner;
    uint160 _ownerUint;

    function test() {
        _owner = 0xDF12793CA392ff748adF013D146f8dA73df6E304;
        _ownerUint = 1273516916528256943268872459582090959717186069252;
    }

    function owner() constant returns(address) {
        return _owner;
    }

    function ownerUint160() constant returns(uint160) {
        return uint160(_owner);
    }

    function ownerUintToAddress() constant returns(address) {
        return address(_ownerUint);
    }

}
//0x 16进制 45
//B 2进制 0100 0101

//1 + 2 + 4 + 8 + 16 + 32 + 64 + 128
//1 + 0 + 4 + 0 + 0  + 0 + 64 + 0 = 69
//D 10进制 69 


//0x DF12793CA392ff748adF013D146f8dA73df6E304 
//D 转换10进制 1273516916528256943268872459582090959717186069252

//1 2 3 4 5 6 7 8 9 A B C D E F
//40个 * 4位(二进制) =160位 
//1101        1111           0001 0010 0111 10010011110010100011100100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
//1+4+8=13 D  1+2+4+8=15 F   1    2    1+2+4=7 ....
//address
//uint160