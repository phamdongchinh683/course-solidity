pragma solidity ^0.8.0;

contract AddressExample {

    uint public balanceReceived;


    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

    function withdrawMoneyto(address payable _to) public {
        _to.transfer(getBalance());
    }
}
