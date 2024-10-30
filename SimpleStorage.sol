// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

contract SimpleStorage {
    // Basic types: boolean, uint, int, address, bytes
    uint256 favoriteNumber; // 0

    // store a new favorite number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber
    }
} 