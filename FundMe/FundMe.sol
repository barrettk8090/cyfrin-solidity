// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ sent
        // How do we send ETH to this contract?
        require (msg.value > 1e18, "didn't send enough ETH"); // 1e18 = 1ETH = 1000000000000000000 wei = 1 * 10 **18

        // What is a revert? 
        // Undo any actions that have been done, and send the remaining gas back. 
    }

    // function withdraw() public {}
    function getPrice() public{
        // Address - 0x694AA1769357215DE4FAC081bf1f309aDC325306 
        // ABI - 

    }
    function getConversionRate ()public {}
}