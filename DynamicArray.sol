//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DynamicArray{
    uint[] public myArr;    //Dynamic Size array
    //push elements in the array
    function pushElement(uint item) public{
        myArr.push(item);
    }
    //Length of an array
    function getLength() public view returns(uint){
        return myArr.length;
    }
    //pop elements from the array
    function popElement() public{
        myArr.pop();    //pop() function removes the last element from the array.
    }
}