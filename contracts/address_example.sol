pragma solidity ^0.8.0;

contract HelloWorld {

    address public myAddress;

    function setNewValue(address _myAddress) public {
        myAddress = _myAddress;
    }

    function getMyAddress() external view returns (address) {
        return myAddress;
    }

    function getBlanceAccount() public view returns(uint) {
        return myAddress.balance;
    }
}
