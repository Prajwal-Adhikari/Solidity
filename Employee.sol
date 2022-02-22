//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract EmployeeData{
    struct Employee{
        uint id;
        string name;
        uint salary;
    }
    //mappings are always stored in storage i.e. cost gas
    mapping(uint => Employee) public empdta;
    function setter(uint _id,string memory _name, uint _salary) public{
        empdta[_id] = Employee(_id,_name,_salary);
    }
}