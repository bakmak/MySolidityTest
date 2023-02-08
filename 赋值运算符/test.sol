// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssignmentOperations {
    uint x;
    uint y;
    uint z;

    function setXYZ(uint newX, uint newY, uint newZ) public {
        x = newX;
        y = newY;
        z = newZ;
    }

    // function setY(uint newY) public {
    //     y = newY;
    // }

    // function setZ(uint newZ) public {
    //     z = newZ;
    // }

    function add() public {
        x += y;
    }

    function subtract() public {
        x -= y;
    }

    function multiply() public {
        x *= y;
    }

    function divide() public {
        x /= y;
    }

    function modulus() public {
        x %= y;
    }

    function increment() public {
        x++;
    }

    function decrement() public {
        x--;
    }

    function compoundAssignment() public {
        x += y * z;
    }

    function getX() public view returns (uint) {
        return x;
    } 
}
