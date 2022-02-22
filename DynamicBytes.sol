//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DynamicBytes{
    bytes public myArr = 'abc';
    //push function
    function pushElement() public{
        myArr.push('d');
    }
    //Length of the dynamic bytes array
    function getLength() public view returns(uint){
        return myArr.length;
    }
    //pop function
    function popElement() public{
        myArr.pop();
    }
    //get specific element from the bytes array
    function getElementAtIndex(uint index) public view returns(bytes1){
        return myArr[index];
    }
    //We used bytes1 in returns because we get a single element of bytes type. 
}