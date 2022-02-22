//SPDX-License-Identifier: MIT

pragma solidity >0.7.0;

contract MyFunction{
    string public name = "fsdf"; //A bydefault getter function is defined if we write public
    function getName() public view returns(string memory){
       return name;
    }
    function setName(string memory newName) public{
        name = newName;
    }
}

//NOTE:
/*
Setter function costs gas because of change that to be mined in the blockchain
By default visibility of variable is private
*/