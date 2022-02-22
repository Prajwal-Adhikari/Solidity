//SPDX-License-Identifier : MIT
pragma solidity 0.5.0;

contract Local{
    uint8 public money = 255; // Valid because its in range of uint8
    function addmoney() public {
        money = money + 1;
    }
}
//Lets see what is the problem here
/*
In solidity version 0.5.0 there was a huge problem of overflow.
Read articles

https://peckshield.medium.com/alert-new-batchoverflow-bug-in-multiple-erc20-smart-contracts-cve-2018-10299-511067db6536

https://peckshield.medium.com/integer-overflow-i-e-proxyoverflow-bug-found-in-multiple-erc20-smart-contracts-14fecfba2759

In our contract when the money value is 255 which is the uppermost valid limit of uint8, adding just one to the value which makes
it unbound from uint8 the money is set all down to zero

Are you seeing a problem here?
Suppose you have 255 ethers in your wallet and someone sends you just 1 ether, instead of having 256 ethers you just lost all of your ethers

This problem was solved in solidity verison 0.8.0.


*/