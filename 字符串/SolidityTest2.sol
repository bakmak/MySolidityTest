// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    string public data;
    bytes bstr = new bytes(2);

    function trans() external {
        bstr[0] = 'a';
        bstr[1] = 'b';
        data = string(bstr);
    }
}