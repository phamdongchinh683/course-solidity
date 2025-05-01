pragma solidity ^0.8.0;

contract ExceptionExample {
    mapping(address => uint256) public balanceReceived;

    // when use this you can balanceReceived[totalBlance]

    function sendMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint256 _amount) public {
        require(balanceReceived[msg.sender] >= _amount, " not enough funds"); // check balance in account > amount input?
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
        
            // this is when use if
        // if (balanceReceived[msg.sender] >= _amount) {
        //       balanceReceived[msg.sender] -= _amount; // - balance current account example 2000000000000000000 (current balance) when send 1000000000000000000 else 1000000000000000000
        //      _to.transfer(_amount); // send money to address with _amount input
        // }
    }
}
