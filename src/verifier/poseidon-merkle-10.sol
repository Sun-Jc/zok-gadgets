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
        vk.alpha = Pairing.G1Point(uint256(0x1bf45e36d142236d8d8e98c03cd2e67157da565ae3e18ea5dc91e91928c4e25e), uint256(0x1911eb89fe1425a873c0d7dd044a201f8e97d550a2644fc313d0890160d4b021));
        vk.beta = Pairing.G2Point([uint256(0x1519c4bc256b6004b0eb70154e4445162a4461dc6609402661a89b059508eb29), uint256(0x0def646e706d98f8de983bf1939da32ba348238c8e017eab261e8667cf8296da)], [uint256(0x255019511bf56aa8c18fda6ddd6597ff5cbb8db9b70fdbe5f90f41833fb31ace), uint256(0x2f89047a56ed58b9cf16d7e5e9bd8dfa6bc17fc3e1ea9f71c15eef7ad72b0d31)]);
        vk.gamma = Pairing.G2Point([uint256(0x272d81dc76242eed2071839d646f9da11dd84e7b8068d1e64ef632c4332e14c9), uint256(0x193192a6095f6dd85ad33a69dbdf94074c6bdeb58e181751dccc8a7b835da073)], [uint256(0x23d9b9dc329d51d83616dff3bf38691c2c43ebf4210e8680a1db940837e7a37b), uint256(0x08aa42f9b3614f90e2792f722257ea0fd0d4faa476e7794d61caa96506fc7167)]);
        vk.delta = Pairing.G2Point([uint256(0x0c3685cdf200ce3879044c453426edabbc436169e7d9d151d11f6187ad3c2e96), uint256(0x012094012ad7ca32ef92605b246e9a806ebfe18ea52be12f6f605f9ffe9fc8e8)], [uint256(0x1f99bba22e31af0dec93e309e76704cc6764552ac9f50ee780faeba115e5b1b5), uint256(0x157fe6498120dbbb685637f9e1b806ab3559f0e1407679192dddb7a63e927f36)]);
        vk.gamma_abc = new Pairing.G1Point[](8);
        vk.gamma_abc[0] = Pairing.G1Point(uint256(0x1f077658feefba0b14568de64b3307d20fb39b317a5ddc455f351d077bfc3b28), uint256(0x0a178cb50e0e75ab497f829f283096b0bf372504780c74299e39da29d70c2bfc));
        vk.gamma_abc[1] = Pairing.G1Point(uint256(0x14ea9935203880cb25304a617bc4c59db165d7bb5caab0bcf2af834af405a8e3), uint256(0x0c3febfcf4732f9af32da3f6b741c1beafa95050a67732c43562cb54dd5128f1));
        vk.gamma_abc[2] = Pairing.G1Point(uint256(0x02de1e340e0f5874b5d9f9414a045abaa5e63b31e1f0e5e0a2ac7834a93ac307), uint256(0x01284397dce10cfaec2f225381eeb633c56469f54fa404ae3e2922b051a95167));
        vk.gamma_abc[3] = Pairing.G1Point(uint256(0x1be41c5be436e9fca49d545ae0996bd54aa6661cb2dd7d8f55ad356d89c63a74), uint256(0x2bab3f15b57d92dd8271e4e44ca22ca59a9fc669ec3ced0518d61cc350f843f4));
        vk.gamma_abc[4] = Pairing.G1Point(uint256(0x0c7cdf8fbe3b0ca48beca19b002cc526f89f095b4ab8e1ec19edde37f35eee6b), uint256(0x01f37b1c0f3b4d5893801e799bbdb5963e7d1380ca9be8fe0b9bc64acceea82a));
        vk.gamma_abc[5] = Pairing.G1Point(uint256(0x1fc19d20382b0981bb6eddd4e4d5b565755574999184b77282f7c1d047cab59b), uint256(0x26ab26c22e8ca7735f376b89836e949dc8dda05451136d040c02bbba693b8b79));
        vk.gamma_abc[6] = Pairing.G1Point(uint256(0x08fa15beece3c6aa70ed65f2062688eae162d2bb6260ef98ad330730eea08840), uint256(0x1966476d5411a0f12af5fcaad0b02e06d3da285846e6401d3c98e79417a32f51));
        vk.gamma_abc[7] = Pairing.G1Point(uint256(0x1be5509a6ba58d8ebb482689db7f2c721cec5fe742db298ea6e3b794ec990dc4), uint256(0x07fed1d91a56af5e91fddc783fb60c3a24b4c53b9cc5f0bc1ca62438ae5d7ae7));
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
