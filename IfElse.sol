//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Decision{
    //we cannot use if-else directly. it must reside inside a function
    function IfElse(int a) public pure returns(string memory){
        string memory value;
        if(a>0){
            value = "Greater than zero";
        }
        else if(a == 0){
            value = "Equals to zero";
        }else{
            value = "Less than zero";
        }
        return value;
    }
}