// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.9;

contract ConstructorExample{
    
    mapping (address => uint ) public balanceReceived;
    address public  owner;

    constructor(){
        owner = msg.sender;
    }


    function getOwner() public view returns (address){
        return owner;
    }

    function convertWeiToEther(uint _amountReceive) public pure returns (uint){
        return _amountReceive / 1 ether; // instead 1000000000000000000 you can use 1 ether;
    }

    
    function receivedMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }



    function withdrawMoney(address payable _to, uint256 _amount) public {
        require(balanceReceived[msg.sender] >= _amount, " not enough funds"); // check balance in account > amount input?
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }


}