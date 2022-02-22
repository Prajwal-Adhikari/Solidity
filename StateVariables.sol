//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract StateVariable{
    uint public x; 
    // x = 10;
    // First way
    uint public y = 10;
    //Second Way
    constructor() public{
        x = 5;
    }
    //Third way
    uint public z;
    function setZ() public{
        z = 15; 
    }
}




//Description
/*
Declaring an unsigned int named x in line 5 stores x into the blockchain permanently.
Thats why we need to pay some amount of gas fee.
A default value is stored according to the datatype.
Here in this case 0 is set as it is of type unsigned int.
Now if we write public infront of x, a getter function is automatically defined for our state variable x and we can check the value of x.
We cannot access and assign our x directly
Line no 6 gives us error.
To do so there are 3 ways
    1. Declare and initialize: uint public x = 10;
    2. Using constructor.
    3. Using setter function
*/