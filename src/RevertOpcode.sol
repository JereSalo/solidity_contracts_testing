// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertOpcode {
    // Function that explicitly triggers the REVERT opcode
    function triggerRevert() public pure {
        // assembly {
            // Load the error message into memory
        // let message := mload(0x40) // Free memory pointer
        // mstore(message, 0x20)      // Message length (32 bytes)
        // mstore(add(message, 0x20), "Explicit REVERT opcode called") // Message content

        // Revert with the message (offset is message, size is 0x40 bytes)
        require(false, "Explicit REVERT opcode called");
        // }
    }
}
