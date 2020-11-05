//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.12;

contract IfElse {
    
    function funct(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }
    
}