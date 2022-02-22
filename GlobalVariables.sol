//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract GlobalVariables{
    function getter() public view returns(
        uint blockNumber,
        uint timeStamp,
        address msgSender,
        uint blockDifficulty,
        uint blockGasLimit,
        uint txGasPrice
        ){
        return(block.number,
            block.timestamp,
            msg.sender,
            block.difficulty,
            block.gaslimit,
            tx.gasprice);
    }
}

//https://docs.soliditylang.org/en/v0.8.6/units-and-global-variables.html