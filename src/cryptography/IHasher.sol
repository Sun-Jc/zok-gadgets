// SPDX-License-Identifier: MIT
// Nova Contracts
pragma solidity ^0.8.13;

import "forge-std/console.sol";

abstract contract IHasher {
    function _hash(bytes32[] memory inputs) internal view virtual returns (bytes32);

    function hash(bytes32[] calldata inputs) external view returns (bytes32) {
        return _hash(inputs);
    }

    function hashRecursive(bytes32[] calldata inputs) external view returns (bytes32) {
        if (inputs.length == 0) {
            return bytes32(0);
        }
        bytes32 res = bytes32(0);
        // console.logString("Hash");

        for (uint256 i = 0; i < inputs.length; i += 1) {
            bytes32[] memory pair = new bytes32[](2);
            pair[0] = res;
            pair[1] = inputs[i];
            res = _hash(pair);

            // console.logUint(i);
            // console.logBytes32(pair[0]);
            // console.logBytes32(pair[1]);
            // console.logBytes32(res);
        }
        return res;
    }
}
