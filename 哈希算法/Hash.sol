// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hash {
    function hash(string memory _text, uint _num, address _addr) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }
}