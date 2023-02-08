// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {     //  调用者合约
    function callHello(address addr) external returns(string memory) {
        //  调用合约
        (bool success, bytes memory data) = addr.call(abi.encodeWithSignature("echo()"));
        if(success) {
            return abi.decode(data,(string));
        } else {
            return "error";
        }
    }
}