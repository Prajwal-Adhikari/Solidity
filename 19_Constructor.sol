//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constructor{
    uint public x;
    address public owner;

    constructor(uint _x){
        owner = msg.sender;
        x = _x;
    }
}
//constructor initializes the state variables
