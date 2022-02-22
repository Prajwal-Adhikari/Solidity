// SPDX-License-Identifier: MIT

pragma solidity >0.6.0;

contract testConstructor{
    uint public count;
    constructor(uint new_count){
        count = new_count;
    }
}

//NOTE:
/*
Constructor are executed only once
You can create only one constructor
Compiler creates a default constructor if there is not a explicitly created constructor
*/