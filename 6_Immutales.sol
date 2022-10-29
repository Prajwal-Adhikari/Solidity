//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract Immutables{
    address public immutable owner;   //saves gas
    //immutables are like constant but you can initialize them only one time at the time of
    //deployment of the contract.
    constructor(){
        owner = msg.sender;
    }
}