//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;

contract WhatIsEnum{
    enum user{allowed,await,hold}
    user public u1 = user.allowed;
    uint public lottery = 10000;
    function owner() public{
        if(u1 == user.allowed){
            lottery = 0;
        
        }
    }
    function changeOwner() public{
        u1 = user.await;
    }
}


/* Enums restrict a variable to have one of only a few predefined values.
The values in this enumerated list are called enums.
*/