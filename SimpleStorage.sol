// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

contract SimpleStorage {

    uint256 public myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; // []

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
} 