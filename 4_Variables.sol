//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Variables{
    /*
        1. State variables - stored in the blockchain, requires gas fee
        2. Local variables - local with the scope of a function, doesnot require gas fee
        3. Global variables - exist in global workspace, provides information about the blockchain and the transaction process

        
    */
    // state variables
    uint public state = 145;
    string public hello = "Hello";

    // local variables
    function setLocal() public pure returns(uint){
        uint local = 5;
        return local;
    }
  

    // global variables
    uint public timestamp = block.timestamp;
    uint public difficulty = block.difficulty;
    address public sender = msg.sender; // address of the calle

}