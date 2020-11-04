//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.12;

contract varTypes {
    /*
    There are 3 types of variables in solidity:
    1. Local -> declared inside a function, not stored on the blockchain.
    2. State -> declared outside a function, stored on the blockchain.
    3. Global -> provides information about the blockchain.
     */

    //State variables - saved on blockchain
    string public text = "Hello";
    uint public num = 123;

    function showLocal() public pure returns(uint) {
    //Local variables - not saved on blockchain
        uint loc = 456;
        return (loc);
    }

    //Global variables - giving info regarding blockchain
    uint timestamp = block.timestamp; // Current block timestamp
    address sender = msg.sender; // Address of the caller

    function dispAll() public view returns(string memory, uint, uint, address) {
        return(text, num, timestamp, sender); // var loc not accessiable as it is Local variable 
    }
}