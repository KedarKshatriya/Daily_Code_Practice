// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;

contract HelloWorld {

string private var1 = "Hello World";

    function func1() view public returns (string memory) {
        return(var1);
    }
}