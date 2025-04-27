// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract booleanExample {
    bool public myBool;

    function setTrue(bool _newValue) public {
        myBool = _newValue;
    }

    function negateBool() public {
        myBool = !myBool;
    }

    function retrieve() public view returns (bool) {
        return myBool;
    }


}