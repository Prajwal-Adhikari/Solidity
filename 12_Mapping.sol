// //SPDX-License-Identifier:MIT
// pragma solidity ^0.8.0;

// // contract Mapping{
// //     mapping(address => uint) public balances;   //simple mapping
// //     mapping(address => mapping(address=>bool)) public isFriend; //nested mapping


// //     function examples() external{
// //         balances[msg.sender] = 123;
// //         uint bal = balances[msg.sender];
// //         uint bal2 = balances[address(1)];

// //         balances[msg.sender] += 456; //123 + 456 = 579

// //         delete balances[msg.sender]; //reset to uint default 0
// //     }
// // }

// contract Mapping{
//     //mapping from addresses to uint
//     mapping(address => uint) public balances;
//     //get the balance of an address
//     function getbalance(address addr) public view returns(uint){
//         return balances[addr];
         
//     }
//     //set balance of an address
//     function setbalance(uint _balance, address _addr) public {
//         balances[_addr] = _balance;
//     }
//     //reset balance of an address
//     function resetbalance(address _addr) public{
//         delete balances[_addr];
//     }
// }

// contract NestedMapping{
//     //mapping to mapping
//     mapping(address => mapping(uint=>bool)) public nested;
    
//     //get
//     function Getnested(address _addr,uint _i) public view returns(bool){
//         return nested[_addr][_i];
//     }
//     //set
//     function Setnested(address _addr, uint _i,bool _boo) public {
//         nested[_addr][_i] = _boo;
//     }
// }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}
