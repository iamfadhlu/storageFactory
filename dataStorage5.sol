// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./simplestorage.sol";
contract dataStorage5 is SimpleStorage {
    function store(uint256 _newNumber) public override {
        myFavorite = _newNumber + 5;
    }
}