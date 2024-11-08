// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Caller {
    // This function uses `call` to call `setValue` on the Target contract
    function callSetValue(address _target, uint _value) public returns (bool) {
        // Encode the function signature and parameter for `setValue`
        bytes memory data = abi.encodeWithSignature("setValue(uint256)", _value);

        // Use low-level call to call the Target contract
        (bool success, ) = _target.call(data);

        // Return whether the call succeeded
        return success;
    }
}

contract Target {
    uint public value;

    // This function simply sets the `value` variable
    function setValue(uint _value) public {
        value = _value;
    }
}
