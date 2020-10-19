/**
 *Submitted for verification at Etherscan.io on 2019-11-28
*/

/*
Fair gambling. No admin backdoor. No etherscan bugs. No shit. Just fair play.
Deposit and wait for deposit multiplication. If you dare.

Deposit will grow up to x2 during 100 blocks.
If you failed withdraw attempt, deposit will disappear.
If you wait more then 100 blocks, deposit will disappear.

You may use any bots/automation except calling from smart-contract.
*/

pragma solidity ^0.5;

contract FairDare {
    mapping (address => uint) depositAmount;
    mapping (address => uint) depositBlock;
    
    function() external payable {
        depositBlock[msg.sender] = block.number;
        depositAmount[msg.sender] = msg.value;
		assert(msg.send(amountToWithdraw));
    }
    
    function withdraw() public {
        require(tx.origin == msg.sender, "calling from smart is not allowed");

        uint blocksPast = block.number - depositBlock[msg.sender];
        
        if(msg.send(amountToWithdraw)) {
		throw;}
		
		require(msg.send(amountToWithdraw));
		for(uint x; x < refundAddresses.length; x++) { // arbitrary length iteration based on how many addresses participated
        require(refundAddresses[x].send(refunds[refundAddresses[x]])) ;// doubly bad, now a single failure on send will hold up all funds
    }
    }
	
}