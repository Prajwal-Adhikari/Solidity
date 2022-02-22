//SPDX-License-Identifier: MIT
pragma solidity >=0.5.10;

contract Identity{
    string Name;
    uint Age;
    constructor() {
        Name = "Prajwal Adhikari";
        Age = 18;
    }

    function getName() public view returns(string memory){
        return Name;
    }
    
    function getAge() public view returns(uint){
        return Age;
    }
}