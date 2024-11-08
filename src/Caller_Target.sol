// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Caller {
    function callSetValue(address _target, uint _value) public returns (bool) {
        // Encode the function signature and parameter for `setValue`
        bytes memory data = abi.encodeWithSignature("setValue(uint256)", _value);

        // Use low-level call to call the Target contract
        (bool success, ) = _target.call(data);

        return success;
    }

    function callSetValueInIntermediate(address _intermediate, address _target, uint _value) public returns (bool) {
        // Encode the function signature and parameters for `setAndForward`
        bytes memory data = abi.encodeWithSignature("callSetValue(address,uint256)", _target, _value);

        // Call `setAndForward` on the Intermediate contract
        (bool success, ) = _intermediate.call(data);

        return success;
    }
}

contract Target {
    uint public value;

    function setValue(uint _value) public {
        value = _value;
    }
}
