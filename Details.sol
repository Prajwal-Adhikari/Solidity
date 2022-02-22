// SPDX-License-Identifier: MIT
pragma solidity 0.7.5;
pragma abicoder v2;
contract Details{
    uint256 public Boid;
    string public AccountName;
    uint256 public AccountNumber;
    bool public IsMarried;
    address public Address;
    function store(uint256 _boid,string memory _accountname, uint256 _accountnumber,bool _ismarried, address _address)
     public{
         Boid = _boid;
         AccountName = _accountname;
         AccountNumber = _accountnumber;
         IsMarried = _ismarried;
         Address = _address;
    }

    function retrive() 
    public 
    view 
    returns(uint256,string memory,uint256,bool,address){
        return (Boid,AccountName,AccountNumber,IsMarried,Address);
    }
}
