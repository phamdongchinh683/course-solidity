pragma solidity ^0.8.9;

contract SimpleMapping {
    
    mapping (uint => bool) public myMapping;
    mapping (address => bool) public myAddressMapping;


    function setValue(uint _index) public {
        myMapping[_index] = true;
    }


    function setMyAddressMapping()public {
        myAddressMapping[msg.sender] = true; // msg is person init this transaction
    }

 }