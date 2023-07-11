// SPDX-License-Identifier: MIT
// Nova Contracts
pragma solidity ^0.8.13;

import "./IHasher.sol";

import "forge-std/console.sol";

interface IMerkleVerifier6 {
    function verify(bytes32 root, bytes32[6] memory leaf, bytes32[] calldata proof) external view returns (bool);
}

contract VerdictVerifier is IMerkleVerifier6 {
    IHasher private hasher;

    constructor(IHasher _hasher) {
        hasher = _hasher;
    }

    function verify(bytes32 root, bytes32[6] memory leaf, bytes32[] calldata proof) external view returns (bool) {
        bytes32[] memory inputs = new bytes32[](6);
        for (uint256 i = 0; i < 6; i += 1) {
            inputs[i] = leaf[i];
        }
        inputs[1] &= 0x0fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

        bytes32 res = hasher.hashRecursive(inputs);

        // console.logString("I");
        // console.logBytes32(inputs[0]);
        // console.logBytes32(inputs[1]);
        // console.logBytes32(inputs[2]);
        // console.logBytes32(inputs[3]);
        // console.logBytes32(inputs[4]);
        // console.logBytes32(inputs[5]);

        // console.logString("Leaf");
        // console.logBytes32(res);

        for (uint256 i = proof.length; i > 0; i -= 2) {
            inputs = new bytes32[](2);

            bytes32 position = proof[i - 2];
            bytes32 sibling = proof[i - 1];

            if (position == bytes32(uint256(0))) {
                inputs[0] = sibling;
                inputs[1] = res;
            } else {
                inputs[0] = res;
                inputs[1] = sibling;
            }

            res = hasher.hash(inputs);

            // console.logString("Proof");
            // console.logBytes32(inputs[0]);
            // console.logBytes32(inputs[1]);
            // console.logBytes32(res);
        }

        return root == res;
    }
}

contract MockMerkleVerifier is IMerkleVerifier6 {
    IHasher private hasher;

    function verify(bytes32 root, bytes32[6] memory leaf, bytes32[] calldata proof) external view returns (bool) {
        require(address(hasher) != address(0), "hasher should not be empty");

        return true;
    }
}
