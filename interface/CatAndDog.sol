// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract cat {
    string name;
    function eat() public view returns(string) {
        return "cat eat fish";
    }

    function sleep() public view returns(string) {
        return "sleep";
    }
}


contract dog {
    string name;
    function eat() public view returns(string) {
        return "dog miss you";
    }

    function swim() public view returns(string) {
        return "swim";
    }
}


interface animalEat {
    function eat() public view returns(string);
}

contract animal {
    function test(address _addr) returns(string) {
        animalEat generalEat = animalEat(_addr);
        return generalEat.eat();
    }
}