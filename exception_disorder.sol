pragma solidity ^0.4.22;
contract KotET {
    address public king;
    uint public claimPrice = 100;
    address owner;
    //constructor, assigning ownership
    constructor() {
        owner = msg.sender;
        king = msg.sender;
    }
    //for contract creator to withdraw commission fees
    function sweepCommission(uint amount) {
        owner.send(amount);
    }
    //fallback function
    function() {
        if (msg.value < claimPrice) revert;
        uint compensation = calculateCompensation();
        king.send(compensation);
        king = msg.sender;
        claimPrice = calculateNewPrice();
    }
}
