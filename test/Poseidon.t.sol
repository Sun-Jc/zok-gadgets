// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/verifier/poseidon-2.sol" as p2;
import "../src/verifier/poseidon-5.sol" as p5;
import "../src/cryptography/PoseidonHashers.sol";

contract PoseidonTest is Test {
    p2.Verifier public verifier2;
    p5.Verifier public verifier5;
    IHasher public hasher;

    function setUp() public {
        verifier2 = new p2.Verifier();
        verifier5 = new p5.Verifier();
        hasher = new PoseidonHasherVanilla();
    }

    function testHash2() public {
        bytes32[] memory inputs = new bytes32[](2);

        inputs[0] = 0x033abd15b27bd58a2259e8ae7be00cb54436f8c0cbe84c41240c1c296e339b43;
        inputs[1] = 0x0bc79c64e4776d3b15d8c889c4e8c71091cee853fd4bd8c4f047817d9980fff7;

        console.logUint(uint256(hasher.hash(inputs)));
    }

    function testHash5() public {
        bytes32[] memory inputs = new bytes32[](5);

        inputs[0] = 0x033abd15b27bd58a2259e8ae7be00cb54436f8c0cbe84c41240c1c296e339b43;
        inputs[1] = 0x0bc79c64e4776d3b15d8c889c4e8c71091cee853fd4bd8c4f047817d9980fff7;
        inputs[2] = 0x01c21371e292b4ac4e17d0ca3263e6ee701b8538563129885b6d332e21f50e86;
        inputs[3] = 0x04077525c1d6286843ed79a51a908d783c3da28cbfb0d306c80405d9a9ba0fc8;
        inputs[4] = 0x1c858f1b45a603907b3f612a6f0fd90ab9a276c716b57ea03a009e4d76e27571;

        console.logUint(uint256(hasher.hash(inputs)));
    }

    function testVerify2() public {
        string memory path = "prover/out/poseidon-2/proof.json";
        p2.Verifier.Proof memory proof = readProofPoseidon2(path);

        uint256[1] memory inputs = [readInputs(path)[0]];

        assertTrue(verifier2.verifyTx(proof, inputs));
    }

    function testVerify5() public {
        string memory path = "prover/out/poseidon-5/proof.json";
        p5.Verifier.Proof memory proof = readProofPoseidon5(path);

        uint256[1] memory inputs = [readInputs(path)[0]];

        assertTrue(verifier5.verifyTx(proof, inputs));
    }

    function readProofPoseidon2(string memory path) public returns (p2.Verifier.Proof memory) {
        string memory json = vm.readFile(path);

        bytes32 a0 = vm.parseJsonBytes32(json, ".proof.a[0]");
        bytes32 a1 = vm.parseJsonBytes32(json, ".proof.a[1]");

        bytes32 b00 = vm.parseJsonBytes32(json, ".proof.b[0][0]");
        bytes32 b01 = vm.parseJsonBytes32(json, ".proof.b[0][1]");
        bytes32 b10 = vm.parseJsonBytes32(json, ".proof.b[1][0]");
        bytes32 b11 = vm.parseJsonBytes32(json, ".proof.b[1][1]");

        bytes32 c0 = vm.parseJsonBytes32(json, ".proof.c[0]");
        bytes32 c1 = vm.parseJsonBytes32(json, ".proof.c[1]");

        p2.Pairing.G1Point memory a = p2.Pairing.G1Point(uint256(a0), uint256(a1));
        uint256[2] memory b0 = [uint256(b00), uint256(b01)];
        uint256[2] memory b1 = [uint256(b10), uint256(b11)];
        p2.Pairing.G2Point memory b = p2.Pairing.G2Point(b0, b1);

        p2.Pairing.G1Point memory c = p2.Pairing.G1Point(uint256(c0), uint256(c1));

        p2.Verifier.Proof memory proof = p2.Verifier.Proof(a, b, c);

        return proof;
    }

    function readInputs(string memory path) public returns (uint256[] memory) {
        string memory json = vm.readFile(path);
        uint256[] memory inputs = vm.parseJsonUintArray(json, ".inputs");
        return inputs;
    }

    function readProofPoseidon5(string memory path) public returns (p5.Verifier.Proof memory) {
        string memory json = vm.readFile(path);

        bytes32 a0 = vm.parseJsonBytes32(json, ".proof.a[0]");
        bytes32 a1 = vm.parseJsonBytes32(json, ".proof.a[1]");

        bytes32 b00 = vm.parseJsonBytes32(json, ".proof.b[0][0]");
        bytes32 b01 = vm.parseJsonBytes32(json, ".proof.b[0][1]");
        bytes32 b10 = vm.parseJsonBytes32(json, ".proof.b[1][0]");
        bytes32 b11 = vm.parseJsonBytes32(json, ".proof.b[1][1]");

        bytes32 c0 = vm.parseJsonBytes32(json, ".proof.c[0]");
        bytes32 c1 = vm.parseJsonBytes32(json, ".proof.c[1]");

        p5.Pairing.G1Point memory a = p5.Pairing.G1Point(uint256(a0), uint256(a1));
        uint256[2] memory b0 = [uint256(b00), uint256(b01)];
        uint256[2] memory b1 = [uint256(b10), uint256(b11)];
        p5.Pairing.G2Point memory b = p5.Pairing.G2Point(b0, b1);

        p5.Pairing.G1Point memory c = p5.Pairing.G1Point(uint256(c0), uint256(c1));

        p5.Verifier.Proof memory proof = p5.Verifier.Proof(a, b, c);

        return proof;
    }
}
