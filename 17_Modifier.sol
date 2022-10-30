//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier{
    uint public count;
    bool public paused;

    function setPause(bool _pause) public {
        paused = _pause;
    }

    modifier whenNotPaused(){
        require(!paused,"Paused");
        _;
    }

    function inc() public whenNotPaused{
        count += 1;
    }
    function dec() public whenNotPaused{
        count -= 1;
    }
}