//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/*
        A
       / \  
      B   C
     /\   /\  
    D  E F  G


*/


contract A{
    function foo() public pure returns(string memory){
        return "foo - A";
    }

    function bar() public pure virtual returns(string memory){
        return "bar - A";
    }
}

//lets inherit A to contract B

contract B is A{
    //override bar function of contract A
    function bar() public pure virtual override returns(string memory){
        return "bar - B";
    }
}

//virtual keyword specifies that the function is inheritable and can be customized by the 
//other contract

contract C is B{
    function bar() public pure virtual override returns(string memory){
        return "bar - C";
    }
}

contract D is B,C{
    function bar() public pure virtual override(B,C) returns(string memory){
        return super.bar();     //returns bar - C
    }
}


/*in case of multiple inheritance like
        B
        |
    ----|
    |   |
    C   |
    |   |
    ----D
      |
      |
      |
      E   

in contract E while inheriting C and D, we most consider the order
here C is the most base like constructor as it inherits only B while 
D inherits 2 contracts C and B. So C should be inherited first and is done by
mentioning it first after "is" keyword.
*/
contract E is C,D{
    function bar() public pure override(C,D) returns(string memory){
        return super.bar();     //bar - C is coming from the execution of bar function in D that return bar - C.
    }
}