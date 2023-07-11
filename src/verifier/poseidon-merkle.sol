// This file is MIT Licensed.
//
// Copyright 2017 Christian Reitwiessner
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
pragma solidity ^0.8.0;
library Pairing {
    struct G1Point {
        uint X;
        uint Y;
    }
    // Encoding of field elements is: X[0] * z + X[1]
    struct G2Point {
        uint[2] X;
        uint[2] Y;
    }
    /// @return the generator of G1
    function P1() pure internal returns (G1Point memory) {
        return G1Point(1, 2);
    }
    /// @return the generator of G2
    function P2() pure internal returns (G2Point memory) {
        return G2Point(
            [10857046999023057135944570762232829481370756359578518086990519993285655852781,
             11559732032986387107991004021392285783925812861821192530917403151452391805634],
            [8495653923123431417604973247489272438418190587263600148770280649306958101930,
             4082367875863433681332203403145435568316851327593401208105741076214120093531]
        );
    }
    /// @return the negation of p, i.e. p.addition(p.negate()) should be zero.
    function negate(G1Point memory p) pure internal returns (G1Point memory) {
        // The prime q in the base field F_q for G1
        uint q = 21888242871839275222246405745257275088696311157297823662689037894645226208583;
        if (p.X == 0 && p.Y == 0)
            return G1Point(0, 0);
        return G1Point(p.X, q - (p.Y % q));
    }
    /// @return r the sum of two points of G1
    function addition(G1Point memory p1, G1Point memory p2) internal view returns (G1Point memory r) {
        uint[4] memory input;
        input[0] = p1.X;
        input[1] = p1.Y;
        input[2] = p2.X;
        input[3] = p2.Y;
        bool success;
        assembly {
            success := staticcall(sub(gas(), 2000), 6, input, 0xc0, r, 0x60)
            // Use "invalid" to make gas estimation work
            switch success case 0 { invalid() }
        }
        require(success);
    }


    /// @return r the product of a point on G1 and a scalar, i.e.
    /// p == p.scalar_mul(1) and p.addition(p) == p.scalar_mul(2) for all points p.
    function scalar_mul(G1Point memory p, uint s) internal view returns (G1Point memory r) {
        uint[3] memory input;
        input[0] = p.X;
        input[1] = p.Y;
        input[2] = s;
        bool success;
        assembly {
            success := staticcall(sub(gas(), 2000), 7, input, 0x80, r, 0x60)
            // Use "invalid" to make gas estimation work
            switch success case 0 { invalid() }
        }
        require (success);
    }
    /// @return the result of computing the pairing check
    /// e(p1[0], p2[0]) *  .... * e(p1[n], p2[n]) == 1
    /// For example pairing([P1(), P1().negate()], [P2(), P2()]) should
    /// return true.
    function pairing(G1Point[] memory p1, G2Point[] memory p2) internal view returns (bool) {
        require(p1.length == p2.length);
        uint elements = p1.length;
        uint inputSize = elements * 6;
        uint[] memory input = new uint[](inputSize);
        for (uint i = 0; i < elements; i++)
        {
            input[i * 6 + 0] = p1[i].X;
            input[i * 6 + 1] = p1[i].Y;
            input[i * 6 + 2] = p2[i].X[1];
            input[i * 6 + 3] = p2[i].X[0];
            input[i * 6 + 4] = p2[i].Y[1];
            input[i * 6 + 5] = p2[i].Y[0];
        }
        uint[1] memory out;
        bool success;
        assembly {
            success := staticcall(sub(gas(), 2000), 8, add(input, 0x20), mul(inputSize, 0x20), out, 0x20)
            // Use "invalid" to make gas estimation work
            switch success case 0 { invalid() }
        }
        require(success);
        return out[0] != 0;
    }
    /// Convenience method for a pairing check for two pairs.
    function pairingProd2(G1Point memory a1, G2Point memory a2, G1Point memory b1, G2Point memory b2) internal view returns (bool) {
        G1Point[] memory p1 = new G1Point[](2);
        G2Point[] memory p2 = new G2Point[](2);
        p1[0] = a1;
        p1[1] = b1;
        p2[0] = a2;
        p2[1] = b2;
        return pairing(p1, p2);
    }
    /// Convenience method for a pairing check for three pairs.
    function pairingProd3(
            G1Point memory a1, G2Point memory a2,
            G1Point memory b1, G2Point memory b2,
            G1Point memory c1, G2Point memory c2
    ) internal view returns (bool) {
        G1Point[] memory p1 = new G1Point[](3);
        G2Point[] memory p2 = new G2Point[](3);
        p1[0] = a1;
        p1[1] = b1;
        p1[2] = c1;
        p2[0] = a2;
        p2[1] = b2;
        p2[2] = c2;
        return pairing(p1, p2);
    }
    /// Convenience method for a pairing check for four pairs.
    function pairingProd4(
            G1Point memory a1, G2Point memory a2,
            G1Point memory b1, G2Point memory b2,
            G1Point memory c1, G2Point memory c2,
            G1Point memory d1, G2Point memory d2
    ) internal view returns (bool) {
        G1Point[] memory p1 = new G1Point[](4);
        G2Point[] memory p2 = new G2Point[](4);
        p1[0] = a1;
        p1[1] = b1;
        p1[2] = c1;
        p1[3] = d1;
        p2[0] = a2;
        p2[1] = b2;
        p2[2] = c2;
        p2[3] = d2;
        return pairing(p1, p2);
    }
}

contract Verifier {
    using Pairing for *;
    struct VerifyingKey {
        Pairing.G1Point alpha;
        Pairing.G2Point beta;
        Pairing.G2Point gamma;
        Pairing.G2Point delta;
        Pairing.G1Point[] gamma_abc;
    }
    struct Proof {
        Pairing.G1Point a;
        Pairing.G2Point b;
        Pairing.G1Point c;
    }
    function verifyingKey() pure internal returns (VerifyingKey memory vk) {
        vk.alpha = Pairing.G1Point(uint256(0x1ff2101e5f56be773913ff7020c21a643c024fb5fba23c9eb44a48907ee69e5a), uint256(0x194968a535f636979342f52c36cd779162bd9f1278378aa7fff8062479a800cb));
        vk.beta = Pairing.G2Point([uint256(0x0aea67febc655adcd44598070d440d1850cf84a2791c731b94cde83a72b76d2a), uint256(0x1379d1412361b68fae63d56e2eab2c5ce8ba145b41755b198dbb220f9916ee8e)], [uint256(0x1517394a911e5da514ee59c41191b2f6bb5605ea4d35344088ac412abfa7e37f), uint256(0x0fb64c61cd2c7fde19d7757694a343fbcdd43734ab5831250c2d117fc7ecc032)]);
        vk.gamma = Pairing.G2Point([uint256(0x230da0cf3dec4f847ecb009f1b55676380ce2715c29d7584a669060bc4773233), uint256(0x2bdfd763f0fafd7c4b6529a6eb58d00e288aad72c632785edd58eb8ff01bafcc)], [uint256(0x0ae2f0b3f3712c279f05dff589ccfabd5070a385f601b1ab86f09b1d3b0f58c0), uint256(0x12af68e87f65bc6a324a86f2fbbb59df7962e5ebf3d50d952867de66e4ea7fb8)]);
        vk.delta = Pairing.G2Point([uint256(0x10c6f731dfb7cd6f110692bf39599ab8c29c12fb3ab388f4da68506136f5527d), uint256(0x0b6c69234bf099e4451873cca98c9d176a203fc1d7a7c9dfdbf4acf07f582912)], [uint256(0x1afa2d5264c2fbbbdea830d000c6c2d4be22e3ff2575daaf4e39dcf325514389), uint256(0x1a4eadb0bbf391d148b62c05aad83e2b1845629acb08d78a747b2f73b1b5a6fe)]);
        vk.gamma_abc = new Pairing.G1Point[](8);
        vk.gamma_abc[0] = Pairing.G1Point(uint256(0x0ec4301a29f60b4a06cbe28c777e0ca7dd6838bf7a8f41ce80ec1dbc21265068), uint256(0x1d4d29c99202b24d36c5390dda068fd563e0db6eca6d6154ff9d96bbe7dc170a));
        vk.gamma_abc[1] = Pairing.G1Point(uint256(0x016527b3e9f266e8a510a98c2b2d9310490c41e3b3ffbfc9ea2b77ecba7c450b), uint256(0x0f50cbb0f8395ca2c381de18de42c22e8a99324b80e104778d005fc3a4dcda28));
        vk.gamma_abc[2] = Pairing.G1Point(uint256(0x2895199bd5fc9ae642f11f0896890dfdbee34f70e47c6fa14f1669abdb4bc214), uint256(0x0466639ab29e8ee6958659cca6c362db617e213265f75f47a8b9186fd67e2ab1));
        vk.gamma_abc[3] = Pairing.G1Point(uint256(0x24aa6b03f1f6e3f5fd5438cee0fbfaa020929e4cd44fcaf33c5e4e96a8d2cb4f), uint256(0x124e2e5c7a34b2f2b98cdab47cec4c374e91e5b00ed9fac247f32f233878b0b4));
        vk.gamma_abc[4] = Pairing.G1Point(uint256(0x00245b288a9e5cd8ec0e29f78de5934ba36bc737f31628ae56ae116ec69f3fd4), uint256(0x06aa20f62648dee1ac84ad8117cc53f1ca112c27bb0b46dc052ab8945ed6e3f0));
        vk.gamma_abc[5] = Pairing.G1Point(uint256(0x05c6dbe0a39374b09ec7a6f485b245e1a885da43b31b0f63559e3b2a566a0202), uint256(0x098a6d6d083f72f4451b9ba16fbd6536562e5a6e7849a2ed30a8b3d46eccc024));
        vk.gamma_abc[6] = Pairing.G1Point(uint256(0x16cae49d2fd15eb67cad182b43d8300f25a0dad752757aa3e56d409e01cc890b), uint256(0x03cbb499ba8c189856c8c069429ef1e2565166576e0bc7576d89ebf73b77d215));
        vk.gamma_abc[7] = Pairing.G1Point(uint256(0x0626145513e4d157b424f8689ac815a37a606c6f4b0e3497f2c4e4d0f035b31a), uint256(0x0d054727dc445f537a7c2713c225ed29a0e75f2362332399d9ddff188049c9f3));
    }
    function verify(uint[] memory input, Proof memory proof) internal view returns (uint) {
        uint256 snark_scalar_field = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
        VerifyingKey memory vk = verifyingKey();
        require(input.length + 1 == vk.gamma_abc.length);
        // Compute the linear combination vk_x
        Pairing.G1Point memory vk_x = Pairing.G1Point(0, 0);
        for (uint i = 0; i < input.length; i++) {
            require(input[i] < snark_scalar_field);
            vk_x = Pairing.addition(vk_x, Pairing.scalar_mul(vk.gamma_abc[i + 1], input[i]));
        }
        vk_x = Pairing.addition(vk_x, vk.gamma_abc[0]);
        if(!Pairing.pairingProd4(
             proof.a, proof.b,
             Pairing.negate(vk_x), vk.gamma,
             Pairing.negate(proof.c), vk.delta,
             Pairing.negate(vk.alpha), vk.beta)) return 1;
        return 0;
    }
    function verifyTx(
            Proof memory proof, uint[7] memory input
        ) public view returns (bool r) {
        uint[] memory inputValues = new uint[](7);
        
        for(uint i = 0; i < input.length; i++){
            inputValues[i] = input[i];
        }
        if (verify(inputValues, proof) == 0) {
            return true;
        } else {
            return false;
        }
    }
}
