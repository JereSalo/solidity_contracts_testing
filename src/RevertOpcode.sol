// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertOpcode {
    // Function that explicitly triggers the REVERT opcode
    function triggerRevert() public pure {
        assembly {
            // Load the error message into memory
            let message := mload(0x40) // Free memory pointer
            mstore(message, 0x20)      // Message length (32 bytes)
            mstore(add(message, 0x20), "Explicit REVERT opcode called") // Message content

            revert(message, 0x40) // Revert with the message at memory position `message`, length 0x40 (64 bytes)        
        }
    }
}
