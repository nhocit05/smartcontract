pragma solidity ^0.4.17;
contract TheDAO {
mapping (address => uint) public
credit;

function donate(address _to) payable public {
  credit[_to] += msg.value;
}

function queryCredit(address _to) public view returns (uint) {
  return credit[_to];
}

function withdraw(uint _amount) public {
if (credit[msg.sender] >= _amount) {
  msg.sender.call.value(_amount)();
  credit[msg.sender]  -= _amount;
}
}

function getBalance() public view returns (uint) {
return address(this).balance;
}
}
