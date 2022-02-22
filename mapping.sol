//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;


contract Map{
    mapping(uint => string) public roll_no;
    function setter(uint keys,string memory values) public{
        roll_no[keys] = values;
    }
}