//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
contract MyContract{
    //1.Fixed-Size types
        bool public state = true;   //true/false
        uint public x = 5;     //can store positive integers
        address public myAddr = 0xC6123d5a9c9C47b2A2b8b8C892697A39812BA508;    //address data type is used to store any type of address. Cannot send ethers only with address. We need to use address payable
        bytes32  public data = "abcd";  //easy to work with as compared to string

    //2.Variable-Size types
    string public name= "Prajwal Adhikari";
    bytes public _data = "215";
    uint[]public arr = [1,5,3];
    mapping(uint => string) public users;

    //3.User-defined types
    struct User{
        string name;
        uint age;
        string[] todos;

    }

    enum Colors{
        RED,
        GREEN,
        BLUE
    }
    // Colors.RED;
}