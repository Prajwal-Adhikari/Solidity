// pragma solidity ^0.5.10;

// contract Information{
//     Person[] public people;
//     uint public peopleCount = 0;
//     struct Person{
//         string _firstname;
//         string _lastname;
//     }
//     function addPerson(string memory _firstname,string memory _lastname) public{
//          people.push(Person(_firstname,_lastname));
//          peopleCount += 1;
//     }

// }

//Same thing using mapping

pragma solidity ^0.5.10;

contract Information{

    uint public peopleCount = 0;
    mapping(uint => Person) public people;
    struct Person{
        uint _id;
        string _firstname;
        string _lastname;
    }
    function addPerson(string memory _firstname,string memory _lastname) public{
        incrementCount();
         people[peopleCount] = Person(peopleCount,_firstname,_lastname);
    }
    function incrementCount() internal {
        peopleCount += 1;
    }

}