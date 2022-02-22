//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract wallet{
    //an address to which this contract will send ethers
    address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    //pay ether to this contract
    function payEther() public payable{

    }
    //check ether amount in this contract
    function checkEther() public view returns(uint){
        return address(this).balance;
    }
    //send ether to an address
    function sendEtherToAccount() public {
        user.transfer(2 ether);
    }

    function userEther() public view returns(uint){
        return user.balance;
    }
}