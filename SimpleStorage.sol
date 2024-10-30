// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

contract SimpleStorage {
    // Basic types: boolean, uint, int, address, bytes
    // State variable - visibility docs: https://docs.soliditylang.org/en/latest/contracts.html#visibility-and-getters
    uint256 public favoriteNumber; // 0

    // store a new favorite number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // functions that dont have to run for you to call them - view, pure
    // view and pure do cost gas ONLY when a gas-cost transaction is calling it
    // view - read state on the blockchain; disallows state changes
    // pure - disallow reading state and stage changes 
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
} 