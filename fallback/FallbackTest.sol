// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fallback {
    event eventFallback(string);

    fallback() external payable {
        emit eventFallback("fallback");
    }
}


contract SolidityTest {
    address private fb;     //  外部合约

    constructor(address addr) {
        fb = addr;
    }

    function callFallback() external view returns(string memory) {
        //  调用合约 Fallback 不存在的方法 echo()
        bytes4 methodId =   bytes4(keccak256("echo()"));    

        //  调用合约
        (bool success, bytes memory data) = fb.staticcall(abi.encodeWithSelector(methodId));
        if(success) {
            return abi.decode(data,(string));
        } else {
            return "error";
        }
    }
}