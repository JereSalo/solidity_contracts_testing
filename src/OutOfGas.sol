pragma solidity ^0.8.0;

contract OutOfGas {
    function consumeGas() public pure returns (uint256) {
        uint256 x = 1;
        for (uint256 i = 1; i < type(uint256).max; i++) {
            x = x + i;
        }
        return x;
    }
}
