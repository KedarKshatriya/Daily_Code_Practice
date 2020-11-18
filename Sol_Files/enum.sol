// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;

contract Enum {
    enum Status {
        Pending, 
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    
    Status public status; //default value is the 1st element listed (eg. Pending)
    
    //Returns uint
    //Pending -0
    //Shipped -1 
    //Accepted -2
    //Rejected -3
    //Canceled -4
    
    function get() public view returns(Status) {
        return status;
    }
    
    
    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }
    
    function cancel() public {
        status = Status.Canceled;
    }
    
    
    // delete resets the enum to it's first value, 0
    function reset() public {
        delete status;
    }
}
