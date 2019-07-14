// check  the  condition  to end the  game
5
if (lastTimeOfNewCredit + TWELVE_HOURS  > block.timestamp) {
        msg.sender.send(amount );
        // Sends  jacpot  to the  last  creditor
        creditorAddresses[creditorAddresses.length  - 1].send(profitFromCrash );
        owner.send(this.balance );
        // Reset  contract  state
        lastCreditorPayedOut = 0;
        lastTimeOfNewCredit = block.timestamp;
        profitFromCrash = 0;
        creditorAddresses = new  address [](0);
        creditorAmounts = new  uint [](0);
        round += 1;
        return  false;
}}
