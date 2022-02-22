//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;

contract LocalVariable{
    string public text = "This is sample text"; //In state level we cant use memory
    function store() pure public returns(uint,string memory){
        uint age = 10; //local variable
        string memory name = "Prajwal Adhikari";
        return (age,name);

    }
}


// NOTE:
/*
Local Variables are stored in stack, not on storage
Dont cost gas
Memory keyword cannot be used on contract level
There are some types that reference storage by default eg string
*/