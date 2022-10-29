//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Array{
    uint[] public arr;

    //insert into an array
    function set(uint _val) public{
        arr.push(_val);
    }

    //get array element
    function get(uint index) public view returns(uint){
        return arr[index];
    }

    //get whole array
    function getArr() public view returns(uint[] memory){
        return arr;
    }

    //get size of the array
    function getlength() public view returns(uint){
        return arr.length;
    }

    //remove element from the array
    function remove() public {
        arr.pop();
    }

    //delete an element at an index
    function remove(uint _i) public {
        delete arr[_i];     //resets default uint value of 0
                            //size of the array doesnot change when delete is called
    }

    //create a fixed sized array in memory
    function fmarray() public{
        uint[] memory a = new uint[](5);
    }

}
