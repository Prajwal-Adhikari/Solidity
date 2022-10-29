//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Primitives{
    //Data types
    /*
    1. unsigned integers (non-negative integers)
    2. signed integers(negative and positive integers)
    3. booleans
    4. address
    5. bytes
    */
    // 1. uint
    uint public x = 10;
    uint256 public y = 444;
    uint8 public w = 255;
    // uint8 public z = 256;   //error because it cant fit in uint8 range i.e. 0 to 2^n - 1

    //2. int
    int public p = 55;
    int256 public q = 11;
    int public neg = -58;
    int8 public num = -128;
    // int8 public numb = -129;    //error because it cant fit in int8 range i.e. -2^(n-1) to +2^(n-1) - 1
    
    //int and uint only themselves refer to int256 and uint256 respectively.

    //3. boolean
    bool on = true;
    bool off = false;

    //4. address
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // 40 characters, prefixed by 0x, takes 20 bytes or 160 bits or 40 hex characters
    // 40 hex chars * 4 bits = 160 bits i.e. 20 bytes as 1 byte = 8 bits.
    // It corresponds to the last 20 bytes of the Keccak-256 hash of the public key.

    // 5. bytes
    bytes32 public xyz = 0x6162636400000000000000000000000000000000000000000000000000000000;


    //notes
    uint umin = type(uint).min;
    uint umax = type(uint).max;

    int imin = type(int).min;
    int imax = type(int).max;

    //default values;
    uint public duint;  //0
    int public dint;    //0
    bool public dbool;  //false
    address public daddr;   //0x0000000000000000000000000000000000000000
    bytes32 public dbyte;   //0x0000000000000000000000000000000000000000000000000000000000000000

}