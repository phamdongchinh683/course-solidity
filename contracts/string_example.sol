// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract StringExample {
    string public myString ='Hello world';

    function setNewValue(string memory _newValue) public {
        myString = _newValue;
    }

}