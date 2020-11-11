// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;

contract Array {
    
    uint[] arr;
    uint[] arr2 = [1,2,3];
    
    uint[10] fixSizeArr;
    
    function get(uint _i) public view returns (uint) {
        return arr[_i];
    }
    
    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }
    
   function push(uint _i) public {
       arr.push(_i);
   }
   
   function pop() public {
       arr.pop();
   }
   
   function getLength() public view returns (uint) {
       return arr.length;
   }
    
   function remove(uint index) public {
       delete arr[index];
   }
}

contract CompactArray {
    uint[] public arr;
    
    // Deleting an element creates a gap in the array.
    // One trick to keep the array compact is to
    // move the last element into the place to delete.
    
    
    function remove (uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
    
    function test() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);
        
        remove(1);
        remove(2);
    }
    
      function getArr() public view returns (uint[] memory) {
        return arr;
    }
}

