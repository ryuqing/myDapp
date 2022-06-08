pragma solidity ^0.8.7;

contract Struct {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping (address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lam = Car({year: 1980, model:"lamborghini", owner: msg.sender});

        Car memory tesla;
        tesla.model = "MODEL-Y";
        tesla.year = 2022;
        tesla.owner = msg.sender;

        cars.push(toyota); cars.push(lam); cars.push(tesla);
        cars.push(Car("Ferrari", 2015, msg.sender));

        Car memory _car = cars[0];


    }



}
