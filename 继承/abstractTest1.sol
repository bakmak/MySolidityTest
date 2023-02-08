// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 < 0.9.0;

abstract contract Animal {
    string public species;
    constructor(string memory _base) {
        species = _base;
    }
}

abstract contract Feline {
    uint public num;
    function utterance() public pure virtual returns (bytes32);

    function base(uint _num) public returns(uint, string memory) {
        num = _num;
        return (num, "hello world!");
    }
}

//  由于 Animal 中的构造函数没有进行初始化，所以必须修饰为 abstract
abstract contract Cat1 is Feline, Animal {
    function utterance() public pure override returns (bytes32) {
        return "miaow";
    }
}

contract Cat2 is Feline, Animal("Animal") {
    function utterance() public pure override returns (bytes32) {
        // return "maiow";
        return "123";
    }
}