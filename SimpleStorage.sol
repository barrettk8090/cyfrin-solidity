// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

contract SimpleStorage {
    // Basic types: boolean, uint, int, address, bytes
    // State variable - visibility docs: https://docs.soliditylang.org/en/latest/contracts.html#visibility-and-getters
    uint256 public myFavoriteNumber; // 0

    // uint256 listOfFavoriteNumbers; 

    // Creating types - favoriteNumber at index 0, string at index 2
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Creating an array of type People – Dynamic Array 
    Person[] public listOfPeople; // []

    // Can create a static array with a max size:
    // Person[3] public listOfPeople;
    
    // Person public myFriend = Person({favoriteNumber: 11, name: "Jack"});

    // store a new favorite number
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // functions that dont have to run for you to call them - view, pure
    // view and pure do cost gas ONLY when a gas-cost transaction is calling it
    // view - read state on the blockchain; disallows state changes
    // pure - disallow reading state and stage changes 
    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
} 