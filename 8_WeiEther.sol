//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract WeiEther{
    uint public constant OneWei = 1 wei;
    uint public constant OneEth = 1 ether;

    function checkOneWei() public pure returns(bool){
        return 1 wei == 1; 
    }
    function checkOneEther() public pure returns(bool){
        return 1 ether == 1e18 wei;
    }
}