// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 public myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name 

    SimpleStorage public simpleStorage; 
    // UppercaseContract visibility lowercaseVariable

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}