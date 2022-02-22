pragma solidity ^0.5.10;

contract Bank{
    int balance;
    constructor() public {
        balance = 0;
    }

    function get() public view returns(int){
        return balance;
    }

    function deposit(int _amt) public{
        balance += _amt; 
    }

    function withdraw(int _amt) public {
        balance -= _amt;
    }
}