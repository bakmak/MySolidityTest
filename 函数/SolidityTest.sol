// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleFunction  {
    uint256 public count;

    function increment() public {
        count++;
    }

    function getCount() public view returns (uint256) {
        return count;
    }

    function callFunction() public {
        increment();
        increment();
        uint256 currentCount = getCount();  // currentCount 的值为 2
    }
}