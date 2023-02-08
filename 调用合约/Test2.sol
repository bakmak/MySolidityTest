// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    function callHello(address addr) external view returns(string memory) {
        //  编码被调用者的方法签名
        bytes4 methodId = bytes4(keccak256("echo()"));

        (bool success, bytes memory data) = addr.staticcall(abi.encodeWithSelector(methodId));
        if(success) {
            return abi.decode(data,(string));
        } else {
            return "error";
        }
    }
}