pragma solidity ^0.8.0;

contract Intermediate {
    function setAndForward(address _target, uint _value) public returns (bool) {
        // Encode the function signature and parameter for `setValue`
        bytes memory data = abi.encodeWithSignature("setValue(uint256)", _value);

        // Call `setValue` on the Target contract
        (bool success, ) = _target.call(data);

        return success;
    }
}
