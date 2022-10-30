//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    string public message = "state variable";
    function get() public view returns(string memory){
        return message;
    }
}

contract B is A{
    /*
    string public message = "new from B";
    above line of code generates error because it is not allowed to override the state variable
    */

    //correct way
    constructor(){
        message = "Correct overriding of state variable";

    }
}