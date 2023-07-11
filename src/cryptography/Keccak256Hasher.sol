// SPDX-License-Identifier: MIT
// Nova Contracts
pragma solidity ^0.8.13;

import "./IHasher.sol";

contract Keccak256Hasher is IHasher {
    function _hash(bytes32[] memory inputs) internal pure override returns (bytes32) {
        if (inputs.length == 0) {
            return bytes32(0);
        } else if (inputs.length == 1) {
            return keccak256(abi.encode(inputs[0]));
        } else if (inputs.length == 2) {
            bytes32[2] memory state;
            state[0] = inputs[0];
            state[1] = inputs[1];
            return keccak256(abi.encode(state));
        } else if (inputs.length == 3) {
            bytes32[3] memory state;
            state[0] = inputs[0];
            state[1] = inputs[1];
            state[2] = inputs[2];
            return keccak256(abi.encode(state));
        } else if (inputs.length == 5) {
            bytes32[5] memory state;
            state[0] = inputs[0];
            state[1] = inputs[1];
            state[2] = inputs[2];
            state[3] = inputs[3];
            state[4] = inputs[4];
            return keccak256(abi.encode(state));
        } else if (inputs.length == 10) {
            bytes32[10] memory state;
            state[0] = inputs[0];
            state[1] = inputs[1];
            state[2] = inputs[2];
            state[3] = inputs[3];
            state[4] = inputs[4];
            state[5] = inputs[5];
            state[6] = inputs[6];
            state[7] = inputs[7];
            state[8] = inputs[8];
            state[9] = inputs[9];
            return keccak256(abi.encode(state));
        } else {
            revert("not implemented");
        }
    }
}
