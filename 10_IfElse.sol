//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse{
    function GreaterORLess(uint _x) public pure returns(uint){
        if(_x < 10){
            return 0;
        }
        else if(_x == 10){
            return 1;
        }
        else{
            return 2;
        }
    }
    //ternary operator
    function ternaryOP(uint _y) public pure returns(uint){
        return _y > 10 ? 1 : 2;
    }
}