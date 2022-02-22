//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ByteArray{
    bytes2 public b2;   //2 bytes array
    bytes3 public b3;
    function setter() public{
        b2 = 'ab';      //output is 0x6162
        /*
      Everything in bytes are stored in hexadecinmal form. 6162 because ASCII code of a and b
        */
        b3 = 'xy';      //0x787900 because of zero padding
        //bytes arrays are immutable
        // b2[0] = 'c';     It gives error
    }
}