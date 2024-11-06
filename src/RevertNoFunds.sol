// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertNoFunds {
    // State variable to hold a minimum deposit amount
    uint256 public minimumDeposit = 1 ether;

    // Function to receive deposits with a minimum amount requirement
    function deposit() public payable {
        // Check if the sent amount meets the minimum deposit requirement
        if (msg.value < minimumDeposit) {
            // If not, revert the transaction with an error message
            revert("Deposit amount is less than the minimum required");
        }

        // If the condition is met, the deposit is accepted
        // Add custom logic here to handle a successful deposit
    }
}
