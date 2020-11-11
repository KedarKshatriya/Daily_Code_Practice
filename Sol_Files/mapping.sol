// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;

contract Mapping {

    mapping (address => uint)  myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
        //Mapping always returns a value
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
}

contract NestedMapping {
    
    //mapping of address to another mapping
    mapping(address => mapping(uint => bool)) nested;
    
    function get(address _addr1, uint _i) public view returns(bool) {
        return nested[_addr1][_i];
    }
    
    function set(address _addr1, uint _i ,bool _boo) public {
        nested [_addr1][_i] = _boo;
    }
    
    function remove(address _addr1,uint _i) public {
        delete nested [_addr1] [_i];
    }
}