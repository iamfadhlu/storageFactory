// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./simplestorage.sol";

contract storageFactory{

    SimpleStorage[] public listOfStorageContracts; 

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContracts = new SimpleStorage();
        listOfStorageContracts.push(newSimpleStorageContracts);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        listOfStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfStorageContracts[_simpleStorageIndex].retrieve();

    }

}
 