// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InvalidOpcode {
    function triggerInvalidOpcode() public pure {
        assembly {
            invalid() // This will produce an invalid opcode
        }
    }
}
