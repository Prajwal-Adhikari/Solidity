//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct{
    struct Car{
        string model;
        uint year;
        address owner;
    }
    //single instance
    Car public car;
    //multiple instances - array
    Car[] public cars;
    //mapping carsbyowners
    mapping(address => Car[]) public carsByOwners;

    //examples
    function examples() external{
        //initializing structs
        Car memory toyota = Car("Toyota",1990,msg.sender);  //parameters need to follow the order
        //initialization using key value pairs
        Car memory lambo = Car({model:"Lamborghini",owner:msg.sender,year:1980});    //this way we dont have to follow the order
        //struct will have default value if not given explicitly
        Car memory tesla;   //defaults - string "",uint 0,address 0x00112....
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        //storing above cars into cars array
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        //we dont always have to first create instance in memory and then push into the array
        cars.push(Car("Ferrari",1985,msg.sender));

        //getting structs
        Car memory _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;
        //modifying struct members' data
        Car storage _car_ = cars[1];
        _car_.model = "Tata";
        _car_.year = 1960;
        //we can use delete to reset data in struct
        delete _car_.owner;

        //detele a member in a struct
        //delete cars[2];
    }

}