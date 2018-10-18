pragma solidity ^0.4.25;

contract Bounty {
    address owner;
    // The address of the first person who gets the correct answer
    address winner;
    uint bountyAmount;
    bool public bountyDisbursed;
    mapping(address => uint) availableFunds;
    
    constructor(address _winner) public {
        owner = msg.sender;
        winner = _winner;
        bountyAmount = 0.1 ether;
        bountyDisbursed = false;
    }

    function reward() payable external {
        require(msg.value == bountyAmount);

        if (winner != address(0)) {
            // Record the fund that the winner can withdraw.
            availableFunds[winner] += bountyAmount; 
        }
    }

    // For security purposes, we let the winner withdraw funds rather than push funds automatically. 
    function withdrawReward() external {
        // Only winner can call this function.
        require(msg.sender == winner);
        // Make sure the bounty has not been already withdrawn.
        require(bountyDisbursed == false);
        
        // Funds that the winner can withdraw
        uint amountToWithdraw = availableFunds[msg.sender];
        // Set the amount to withdraw to 0
        availableFunds[msg.sender] = 0;
        msg.sender.transfer(amountToWithdraw);
        bountyDisbursed = true;
    }
}