// SPDX-License-Identifier: MIT
// Nova Contracts

pragma solidity ^0.8.13;

import "./IHasher.sol";

import "./poseidon/PoseidonNeptuneU2bn256.sol";
import "./poseidon/PoseidonNeptuneU3bn256.sol";
import "./poseidon/PoseidonNeptuneU5bn256.sol";
import "./poseidon/PoseidonNeptuneU10bn256.sol";

library Constrained {
    function toConstrained(bytes32 input) internal pure returns (bytes32) {
        // put first 4 bits to 0
        return
            input &
            0x0fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    }
}

abstract contract WithPoseidonModulus {
    uint256 modulus =
        0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001;
    uint256 zero =
        0x0000000000000000000000000000000000000000000000000000000000000000;

    // constructor() {
    //     modulus = uint256(
    //         bytes32(

    //         )
    //     );
    // }
}

contract Poseidon2 is WithPoseidonModulus {
    function hash(
        bytes32 input0,
        bytes32 input1
    ) public view returns (bytes32) {
        PoseidonU2bn256.HashInputs3 memory state = PoseidonU2bn256.HashInputs3(
            zero,
            uint256(input0),
            uint256(input1)
        );
        return bytes32(PoseidonU2bn256.hash(state, modulus));
    }
}

contract Poseidon5 is WithPoseidonModulus {
    function hash(
        bytes32 input0,
        bytes32 input1,
        bytes32 input2,
        bytes32 input3,
        bytes32 input4
    ) public view returns (bytes32) {
        PoseidonU5bn256.HashInputs6 memory state = PoseidonU5bn256.HashInputs6(
            zero,
            uint256(input0),
            uint256(input1),
            uint256(input2),
            uint256(input3),
            uint256(input4)
        );
        return bytes32(PoseidonU5bn256.hash(state, modulus));
    }
}

contract PoseidonHasherVanilla is IHasher {
    Poseidon2 private h2;
    Poseidon5 private h5;

    constructor() {
        h2 = new Poseidon2();
        h5 = new Poseidon5();
    }

    function hashFixed(bytes32[] memory inputs) public view returns (bytes32) {
        if (inputs.length == 2) {
            return h2.hash(inputs[0], inputs[1]);
        } else if (inputs.length == 5) {
            return
                h5.hash(inputs[0], inputs[1], inputs[2], inputs[3], inputs[4]);
        } else {
            revert("PoseidonHasherVanilla: invalid number of inputs");
        }
    }

    function _hash(
        bytes32[] memory inputs
    ) internal view override returns (bytes32) {
        return hashFixed(inputs);
    }
}

contract PoseidonHasherConstrained is IHasher {
    using Constrained for bytes32;

    PoseidonHasherVanilla private inner;

    constructor() {
        inner = new PoseidonHasherVanilla();
    }

    function _hash(
        bytes32[] memory inputs
    ) internal view override returns (bytes32) {
        bytes32 full = inner.hashFixed(inputs);
        return full.toConstrained();
    }
}
