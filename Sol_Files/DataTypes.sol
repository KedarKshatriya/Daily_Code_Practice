//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.12;

contract dataTypes {

    bool b = true;

    /* 
    uint stands for unsigned integer (non -ve integers)

    uint8: ranges from 0 to 2 ** 8 - 1
    uint16: ranges from 0 to 2 ** 16 - 1
    uint256 or uint: ranges from 0 to 2 ** 256 - 1
    */
    uint8 u8 = 1;
    uint256 u256 = 456;
    uint u = 123;

    /*
    negative integers are allowed in int types
    */ 

    int8 i8 = -1;
    int256 i256 = 456;
    int i = -123;

    address addr1 = 0x93ba13F5958cEf4A4beB2f40E9282012125B329c;

    //Some default values of data types

    bool defaultbool; // False
    uint defaultUint; // 0
    int defaultInt; // 0
    address addr; // 0x0000000000000000000000000000000000000000

    function dispAll() public view returns(bool,uint8,uint256,uint,int8,int256,int,address,bool,uint,int,address) {
        return(b,u8,u256,u,i8,i256,i,addr1,defaultbool,defaultUint,defaultInt,addr);
    }
}