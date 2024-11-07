// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Caller {
    // This function uses the low-level `call` to interact with another contract
    function callAnotherContract(address _target, bytes memory _data) public payable returns (bool, bytes memory) {
        // Use `call` to send the data and optionally send ether
        (bool success, bytes memory result) = _target.call{value: msg.value}(_data);
        
        // Check if the call succeeded
        require(success, "External call failed");
        
        // Return the result of the call
        return (success, result);
    }
}

contract Target {
    uint public value;
    
    // A function to be called
    function setValue(uint _value) public payable {
        value = _value;
    }
}
