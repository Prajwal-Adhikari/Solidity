//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{
    uint public count = 0;
    function increaseCount() external{
        count += 1;
    }
    function decreaseCount() external{
        count -= 1;
    }
}