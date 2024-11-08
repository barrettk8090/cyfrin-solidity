// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // uint256 public favoriteNumber
    // type visibility name 

    SimpleStorage public simpleStorage; 
    // UppercaseContract visibility lowercaseVariable

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}