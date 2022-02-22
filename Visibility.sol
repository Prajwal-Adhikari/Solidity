//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract A{
    function f1() public pure returns(uint){
        return 1;
    }
    function f2() private pure returns(uint){
        return 2;
    }
    function f3() internal pure returns(uint){
        return 3;
    }
    function f4() external pure returns(uint){
        return 4;
    }
    
}

//Inheriting contract A in contract B
contract B is A{
    uint public bx = f3();

}

contract C{
    //Creating new objects from a contract
    A obj = new A();
    uint public cx =obj.f1();
    uint public cx_1 = obj.f4();
}