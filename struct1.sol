//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;

//Creating a structure
struct Student{
    uint roll;
    string name;
}
contract School{
    Student public s1;  //variable s1 of type Student.
    constructor(uint _roll,string memory _name){
        s1.roll = _roll;
        s1.name = _name;
    }
    //Change values in structure
    function changeData(uint _roll,string memory _name) public{
        //Structures are stored in storage like strings so we need to use memory here.
        Student memory newStudentData = Student({
            roll:_roll,
            name:_name
        });
        s1 = newStudentData;
    }
}
