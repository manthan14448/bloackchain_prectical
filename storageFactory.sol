// SPDX -License- Identifier:MIT
pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract storageFactory{
    SimpleStorage[] public simplestorageArray;
    function createSimpleStorgeContract() public{
        SimpleStorage simplestorage=new SimpleStorage();
        simplestorageArray.push(simplestorage);
    }
    function sfsStorage(uint256 _simplestorageIndex,uint256 _simpleStorageNumber) public{
        SimpleStorage simplestorage=SimpleStorage(address(simplestorageArray[_simplestorageIndex]));
        simplestorage.store(_simpleStorageNumber);
    }
    
    function sfsgetStorage(uint256 _simplestorageIndex) public view returns (uint256){
        SimpleStorage simplestorage=SimpleStorage(address(simplestorageArray[_simplestorageIndex]));
        return simplestorage.retrieve();
    }
}