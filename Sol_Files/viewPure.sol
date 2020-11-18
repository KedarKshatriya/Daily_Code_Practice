// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;

contract ViewPure {
    uint public x = 1;
    
    
     // Not to modify the state.
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }
    
    
    // Not to modify or read from the state.
    function add (uint i , uint j) public pure returns (uint) {
        return i + j;
    }
}