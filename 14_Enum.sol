//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum{
    enum Status{
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    Status public status;
    function get() public view returns(Status){
        return status;
    }
    function set(Status _status) public{
        status = _status;
    }
    function Pending() public{
        status = Status.Pending;
    }
    function Cancel() public{
        status = Status.Canceled;
    }
    function reset() public{
        delete status;
    }
}
