pragma solidity ^0.8.0;

contract MappingStruct {

    mapping (address => Balance ) public balanceReceived;
    // when use this you can balanceReceived[totalBlance] 
    

    struct Payment {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint numPayments;

        mapping (uint => Payment) payments;
    }

    function getBalance() public view returns (uint){
        return address(this).balance; // get blance current account received money
    }

    function sendMoney() public  payable {

        balanceReceived[msg.sender].totalBalance  += msg.value;

        Payment memory payment = Payment(msg.value, block.timestamp); // use memory when function end it remove 

        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].numPayments] = payment;
        balanceReceived[msg.sender].numPayments++;
    }

    function withdrawMoneyto(address payable _to) public {
        _to.transfer(getBalance()); // transfer all money 
    }


  function withdrawMoney(address payable _to, uint _amount) public {
        require(balanceReceived[msg.sender].totalBalance >= _amount, " not enough funds"); // check balance in account > amount input?
    
        balanceReceived[msg.sender].totalBalance -= _amount; // - balance current account example 2000000000000000000 (current balance) when send 1000000000000000000 else 1000000000000000000

        _to.transfer(_amount); // send money to address with _amount input 
    }

    
}
