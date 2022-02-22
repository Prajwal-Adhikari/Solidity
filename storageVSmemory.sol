//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Local{
    string[] public student = ["Prajwal","Ravi","Prashant"];

    //mem() stores s1 in memory. Doesnot reflect change in student.
    //Copies the array
    function mem() public view{
        string[] memory s1 = student;
        s1[0] = "Saman";
    }
    //stor() stores s1 in storage. Reflects change in student.
    //points to the address of the original array.
    function stor() public {
        string[] storage s1 = student;
        s1[0] = "Saman";
    }
}