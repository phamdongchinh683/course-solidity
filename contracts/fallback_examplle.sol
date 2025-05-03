// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract FallbackExample {
    mapping(address => uint256) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint256 _amount) public {
        require(balanceReceived[msg.sender] >= _amount, " not enough funds"); // check balance in account > amount input?
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }

    fallback() external payable {
        receiveMoney();
    }
}
