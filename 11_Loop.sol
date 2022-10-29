//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Loop{
    uint public count = 0;
    uint public clicks = 1;
    function loop() public {
        for(uint i = 0; i < 10; i++){
            if(i == 3)  continue;
            else if(i == 10) break;
            else count++;
            
        }
    }
    function While() public{
        uint x = 0;
        while(x < 5){
            clicks *= 2;
            x++;
        }
    }
}