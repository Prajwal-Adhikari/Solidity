//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract Array{
    uint[4] public myArr = [10,20,30,40]; //Fixed sized array
    //set any value at certain index
    function setter(uint index,uint value) public{
        myArr[index] = value;
    }
    //get length of an array
    function getLength() public view returns(uint){
        return myArr.length;
    }
}