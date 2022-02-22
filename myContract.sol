pragma solidity ^0.5.10;

contract MyContract{
    string public constant name = "unknown";         //no need of getter function and constructor
    int public x = 10;
    uint public y = 5;
    bool public mybool = true;
    // constructor() public{
    //     name = "unknown";
    // }
    // function get() public view returns(string memory){
    //     return name;
    // } Easy way is to set the string public


}