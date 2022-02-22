// SPDX-License-Identifier: MIT

pragma solidity >0.6.0;

contract UsePure{
    uint roll; // state variable
    // function getroll() public pure returns(uint){
    //     return roll;
    // } 
    //Function getroll is erroneous because we cannot use pure as we are reading a statevariable.

    function getter() public pure returns(uint){
        uint age = 10;
        return age;
    }

}