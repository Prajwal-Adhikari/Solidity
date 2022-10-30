//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Errorr{
    //require
    function testrequire(uint _i) public pure{
        require(_i <= 10, "Number is greater than 10!");
    }
    //revert
    function testrevert(uint _i) public pure{
        if(_i > 10){
            revert("Number is greater than 10");
        }
    }
    //assert
    uint public num = 123;
    function testassert() public view{
        //accidental update of state variable num.
        assert(num == 123);
    }
    function foo(uint _i) public{
        num += 1;
        require(_i < 10);
    }
    //custom error
    error myError(uint _p);

    function testcustomerror(uint _p) public pure{
        if(_p > 10){
            revert myError(_p);
        }
    }

}