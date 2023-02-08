// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    struct Book {
        string title;
        string author;
        uint id;
    }
    Book book;

    function setBook() public {
        book = Book('Learn Solidity','bakmak.github.io',1);
    }

    function getBookAuthor() public view returns (string memory) {
        return book.author;
    }
}