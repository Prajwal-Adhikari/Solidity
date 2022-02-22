//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Increment{
    uint initial_value;

    constructor() public{
        initial_value = 0;

    }
    function getValue() public view returns(uint){
        return initial_value;
    }

    function incrementValue() public{
       initial_value += 1;
 
    }

}