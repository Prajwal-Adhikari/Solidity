//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract ReadState{
        //state variable
        uint public myNum;
        //writing or updating the state variable you have to send a transacion 
        //hence it requires gas.
        function setNum(uint _myNum) public{
            myNum = _myNum;
        }

        //Reading a state variable doesnot reqiure gas.
        function readNum() public view returns(uint){
            return myNum;
        }
}