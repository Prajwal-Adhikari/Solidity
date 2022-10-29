//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract Gas{
    uint public i;
    function forever() public{
        while(true){
            i += 1;
        }
    }
}

//Above function is forever running function .