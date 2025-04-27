// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract IntegerWrappingAround {
    // unit8 // 0 - 255
    // init8 // -128 - +127
    // 2 ^ 8 => 2**8
    // Uinit256 => 2^ 256
    // ->> optimal gas fees

    uint8 public myUint8;

    function descrement() public{
        myUint8--;
    }

    function increment() public {
        myUint8++;
    }


}