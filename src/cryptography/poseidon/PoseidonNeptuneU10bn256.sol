pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU10bn256 {
    struct HashInputs11 {
        uint t0;
        uint t1;
        uint t2;
        uint t3;
        uint t4;
        uint t5;
        uint t6;
        uint t7;
        uint t8;
        uint t9;
        uint t10;
    }

    function mix(HashInputs11 memory i, uint q) internal pure {
        HashInputs11 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t3,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t4,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t5,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t6,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t7,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t8,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t9,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t10,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t3,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t4,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t5,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t6,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t7,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t8,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t9,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t10,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t3,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t4,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t5,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t6,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t7,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t8,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t9,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t10,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );

        o.t3 = 0;
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t0,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t1,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t2,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t3,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t4,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t5,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t6,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t7,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t8,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t9,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t10,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );

        o.t4 = 0;
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t0,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t1,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t2,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t3,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t4,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t5,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t6,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t7,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t8,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t9,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t10,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );

        o.t5 = 0;
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t0,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t1,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t2,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t3,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t4,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t5,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t6,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t7,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t8,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t9,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t10,
                0x2e87d547139c064f7ffe6a6a90377280f56cfce339f73b01d4f6ce9818000001,
                q
            ),
            q
        );

        o.t6 = 0;
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t0,
                0x111457ec4f7aed3be6b2eb6d971e97a8688aca73eeb9eb7e906dde3436969697,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t1,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t2,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t3,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t4,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t5,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t6,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t7,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t8,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t9,
                0x2e87d547139c064f7ffe6a6a90377280f56cfce339f73b01d4f6ce9818000001,
                q
            ),
            q
        );
        o.t6 = addmod(
            o.t6,
            mulmod(
                i.t10,
                0x1e780b77bd32356f99f9a7270f2b837d06599240987e3d64f1da1f5d25555556,
                q
            ),
            q
        );

        o.t7 = 0;
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t0,
                0x2db411339bcb502766f67aba96c1453b89865b60e4bd5c176ac72f0bb8000001,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t1,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t2,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t3,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t4,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t5,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t6,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t7,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t8,
                0x2e87d547139c064f7ffe6a6a90377280f56cfce339f73b01d4f6ce9818000001,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t9,
                0x1e780b77bd32356f99f9a7270f2b837d06599240987e3d64f1da1f5d25555556,
                q
            ),
            q
        );
        o.t7 = addmod(
            o.t7,
            mulmod(
                i.t10,
                0x19ec97bd8aecdef1c74f930f7c3c2631e7d2aa26d37ec572645d9efcf76db6dc,
                q
            ),
            q
        );

        o.t8 = 0;
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t0,
                0x028c0420fe60ed7b757d7ceea880121fd9b1e3cdeb758ca9546a3558a0d79436,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t1,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t2,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t3,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t4,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t5,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t6,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t7,
                0x2e87d547139c064f7ffe6a6a90377280f56cfce339f73b01d4f6ce9818000001,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t8,
                0x1e780b77bd32356f99f9a7270f2b837d06599240987e3d64f1da1f5d25555556,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t9,
                0x19ec97bd8aecdef1c74f930f7c3c2631e7d2aa26d37ec572645d9efcf76db6dc,
                q
            ),
            q
        );
        o.t8 = addmod(
            o.t8,
            mulmod(
                i.t10,
                0x2eb91f9b0e64e142c39cf3dc59baad97bce2ab4ecdcd872b270f221340000001,
                q
            ),
            q
        );

        o.t9 = 0;
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t0,
                0x10efe841ced15e7500827eccad53abba3478914c9100e7660af57c5a2d99999a,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t1,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t2,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t3,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t4,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t5,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t6,
                0x2e87d547139c064f7ffe6a6a90377280f56cfce339f73b01d4f6ce9818000001,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t7,
                0x1e780b77bd32356f99f9a7270f2b837d06599240987e3d64f1da1f5d25555556,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t8,
                0x19ec97bd8aecdef1c74f930f7c3c2631e7d2aa26d37ec572645d9efcf76db6dc,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t9,
                0x2eb91f9b0e64e142c39cf3dc59baad97bce2ab4ecdcd872b270f221340000001,
                q
            ),
            q
        );
        o.t9 = addmod(
            o.t9,
            mulmod(
                i.t10,
                0x1b6c0a522a46c9b13dc7166ff40d8ff085b703a0893e6a7473444f6d6e666667,
                q
            ),
            q
        );

        o.t10 = 0;
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t0,
                0x126f5ad66e2b493476fa022d25251578d25ceac646c08c6819dc2ccaa4924925,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t1,
                0x20fe9294252d78d6a093d270cca9a4f9b2af071a2472ccc022a5b31369745d18,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t2,
                0x12ef9921d28dda7fa12a8a95541138d68a2a928baa10e943f92be5a931642c86,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t3,
                0x2e6020836d24e427fb4ced7991714a03f131be9ac9fc6135e10de0adc6000001,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t4,
                0x2a95b5acc62baba9d5655c113ec3be66754c660256a32fdbfe4bf6d41ae147af,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t5,
                0x2e87d547139c064f7ffe6a6a90377280f56cfce339f73b01d4f6ce9818000001,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t6,
                0x1e780b77bd32356f99f9a7270f2b837d06599240987e3d64f1da1f5d25555556,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t7,
                0x19ec97bd8aecdef1c74f930f7c3c2631e7d2aa26d37ec572645d9efcf76db6dc,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t8,
                0x2eb91f9b0e64e142c39cf3dc59baad97bce2ab4ecdcd872b270f221340000001,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t9,
                0x1b6c0a522a46c9b13dc7166ff40d8ff085b703a0893e6a7473444f6d6e666667,
                q
            ),
            q
        );
        o.t10 = addmod(
            o.t10,
            mulmod(
                i.t10,
                0x063e7dbc3e16eb6038d08d1fcea555b9708ad3a6414137d0adeb9b8ef5ad6b5b,
                q
            ),
            q
        );

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
        i.t6 = o.t6;
        i.t7 = o.t7;
        i.t8 = o.t8;
        i.t9 = o.t9;
        i.t10 = o.t10;
    }

    function ark(
        HashInputs11 memory i,
        uint q,
        HashInputs11 memory c
    ) internal pure {
        HashInputs11 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);
        o.t3 = addmod(i.t3, c.t3, q);
        o.t4 = addmod(i.t4, c.t4, q);
        o.t5 = addmod(i.t5, c.t5, q);
        o.t6 = addmod(i.t6, c.t6, q);
        o.t7 = addmod(i.t7, c.t7, q);
        o.t8 = addmod(i.t8, c.t8, q);
        o.t9 = addmod(i.t9, c.t9, q);
        o.t10 = addmod(i.t10, c.t10, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
        i.t6 = o.t6;
        i.t7 = o.t7;
        i.t8 = o.t8;
        i.t9 = o.t9;
        i.t10 = o.t10;
    }

    function sbox_full(HashInputs11 memory i, uint q) internal pure {
        HashInputs11 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);
        o.t1 = mulmod(i.t1, i.t1, q);
        o.t1 = mulmod(o.t1, o.t1, q);
        o.t1 = mulmod(i.t1, o.t1, q);
        o.t2 = mulmod(i.t2, i.t2, q);
        o.t2 = mulmod(o.t2, o.t2, q);
        o.t2 = mulmod(i.t2, o.t2, q);
        o.t3 = mulmod(i.t3, i.t3, q);
        o.t3 = mulmod(o.t3, o.t3, q);
        o.t3 = mulmod(i.t3, o.t3, q);
        o.t4 = mulmod(i.t4, i.t4, q);
        o.t4 = mulmod(o.t4, o.t4, q);
        o.t4 = mulmod(i.t4, o.t4, q);
        o.t5 = mulmod(i.t5, i.t5, q);
        o.t5 = mulmod(o.t5, o.t5, q);
        o.t5 = mulmod(i.t5, o.t5, q);
        o.t6 = mulmod(i.t6, i.t6, q);
        o.t6 = mulmod(o.t6, o.t6, q);
        o.t6 = mulmod(i.t6, o.t6, q);
        o.t7 = mulmod(i.t7, i.t7, q);
        o.t7 = mulmod(o.t7, o.t7, q);
        o.t7 = mulmod(i.t7, o.t7, q);
        o.t8 = mulmod(i.t8, i.t8, q);
        o.t8 = mulmod(o.t8, o.t8, q);
        o.t8 = mulmod(i.t8, o.t8, q);
        o.t9 = mulmod(i.t9, i.t9, q);
        o.t9 = mulmod(o.t9, o.t9, q);
        o.t9 = mulmod(i.t9, o.t9, q);
        o.t10 = mulmod(i.t10, i.t10, q);
        o.t10 = mulmod(o.t10, o.t10, q);
        o.t10 = mulmod(i.t10, o.t10, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
        i.t6 = o.t6;
        i.t7 = o.t7;
        i.t8 = o.t8;
        i.t9 = o.t9;
        i.t10 = o.t10;
    }

    function sbox_partial(HashInputs11 memory i, uint q) internal pure {
        HashInputs11 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs11 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");
        require(i.t3 < q, "INVALID_INPUT");
        require(i.t4 < q, "INVALID_INPUT");
        require(i.t5 < q, "INVALID_INPUT");
        require(i.t6 < q, "INVALID_INPUT");
        require(i.t7 < q, "INVALID_INPUT");
        require(i.t8 < q, "INVALID_INPUT");
        require(i.t9 < q, "INVALID_INPUT");
        require(i.t10 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs11(
                0x23c306a64082f483025eefae613c2da963052fa5b2faacb32ad63374c44d048c,
                0x0760c930ab6f483a5b44909b42edf5a3e6d0091de3e1b4a4962c5c8544d12dc1,
                0x038aa0c8f65a6535dc9e0f761eba672d615d96c100f71c7934c3042995b90a8b,
                0x243e5c5d2cc143fdc9c9ad87dec8ff5c43e9b159227a8010ee457202efe3ec5f,
                0x16db3e9e42de47f7365da276f2f2f8c7616133b82df05ac894101cf72432102d,
                0x13741dbbadf3c8af05c81748637470e3dd2bce50eb6052bbc2750353f562e63c,
                0x263e0b2fdd84cbbe06bcb2d1e2958579ab1f165c1ce6c3fbb3b70828814b0bcd,
                0x2c4d08eeb171adfc72d16a91b21b0bda6dfa26beface9a4f277cddf163d44631,
                0x19e0399901faa6c9bf52e478dba1c450eaddb707812652ab61855203e06ba167,
                0x209c08ef1ab9fb1f7f86165d3826aef842fc2c69569823026acde91656fe4c26,
                0x12c0d18f9d202b4f80fa6ed6b4ffa1b66ce2a1348e67e82cff05f8ee8d3f5a80
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs11(
                0x2c88003fa2960b667693cf904ac3eec06a6494111d909dd46d3e982bfa3c82d0,
                0x099c29efdfff807014f77a64f637f602af90ebc3854bf568e36ca51fac639c87,
                0x24b2647cf6998f037166bc6af752030aa9ae823dc09dabd5ff37bcf969ac1dfb,
                0x0bdc43333d681e0706aee667e6b60a470c52be9dcdec93e811538d64e135cd53,
                0x2f58a98686c177c492ac11cea29fe5f5e76414985a6638e10fee3dfb04f55221,
                0x06d8d28f3173f75e19829103bac1f9080632d4a629c72aa2cdbaf455c3aabaf3,
                0x1651bba0772d4e4694a74d824363c4ceb96161c5fd7e5bf2a20908ea0c013a23,
                0x1f0a7d1fb84b5ff295e9686ed37cb0e45263306785eccf1b1329ffd2e48a6e21,
                0x2f67cafee40bf402974077a2fb8db9df4156c3e7127a8f7c74ffae83db80b071,
                0x12f3bb070f5c3a8a75d2df4304ac65e0189cf0324ecf433a4f0ab324a6d99791,
                0x15cf12e5c77b9e3e79b3f6d01d53b3b5461a14fd3c42e087225483d80242f6cf
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs11(
                0x1002a01cafcf3f22000c33c289c59156bb2a20758beba4f15cecaca4aee3b43a,
                0x24af6128f6a198b51223811732890171852014ee183fc9ee405afbaa4d0c452f,
                0x1d6152e4bbc33042c5e0b7292520eb305e3b1a506b3e6ade959073bd74eb6d03,
                0x2f6bda93728cd9973a1ce803ede2393b4b9643f84a67af07abea27b31ea13e80,
                0x0bd3a2d396b575cbe4de2b920ef2cc9b123ec773a36652e98427f809f81613ca,
                0x03a0d5c4150ebdd538af4b894ce486bfa25d250eb1baf90d5a00e8bbc0453444,
                0x0b70862d368624bfca35050fd2855275be676b18fc7e5587f3f6b3b65b7a6856,
                0x08db3f86e217aa0317ce52702600f95fb2ce13e6ab77a6dbf21c5288e3fc318c,
                0x10a30505966e007546d2b998e99f00adc443a55a507011edcc38b804a93626c3,
                0x0626bb2bced6825051e83a036b7907affbd7c202b39c14fe724e1c0dc9d3430d,
                0x1503822d23e81e59f4adf8d14c584719078138b721ca9539f11ccde2014d04e0
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs11(
                0x24e86adb693812cee3e5a646708e01010b158507d72ec4a05f35adbd8a8fbe5e,
                0x047426b383c71956b9a761ff56a1eadaa14f44e7f1ddae50355f2aa123f2b27e,
                0x001a146bf719a496b5b38136ad2c3f0c157c9159526ef33b741597b214e07fd5,
                0x0f5b03a068c3938f4a06881a1778c6c7d44398786e2f62ba3c8f925628ec2918,
                0x13ff0ef897ccfe487297f57a5cb3da9f0f5196cc82c9fb95487182c84e8eb309,
                0x14df1e062e788711bf4a3f8b6f9e2f0a420b63df6079b447036846fed44db569,
                0x2c53f60c16258b56a6f0e15ec3073e8c4c7ad75d834bbcd693f8e1635197173f,
                0x175adcf0eb37ee594847696427c2ab3cb65b8847174f40435d252acd4098f0f7,
                0x29e8c4649450fdc43e091bf6b8fe0302720de9799a938e2a90a301a3115b7334,
                0x1269fe81369cb18ed2dd623a386638fbbc673b809bbd3771e725ab8374e54294,
                0x28a47431bb502ac8e62f2cffc64934a8d7348a23c66f75b5bd95200a5df8f763
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs11(
                0x024a4377c5e3366ff371353c9de632728a4f38a623270d194b5740e3a708f979,
                0x137a17eb7b9fe8bcd45bc359136bd7827f72602af97d9bfeeb13db34874a614e,
                0x11f9c309a1a9dd059e545a8ebc08c8c123103431b8f9b3a7519ddb5fd69a8afd,
                0x063ac9c80df5e68c12daf473846b3046336f2220f1f6d321990983215fd3f19c,
                0x1f5e2efea1b634ea05e70532ec7dd43ec1a10a65aef3c0950fa8fc6d96189398,
                0x13b44d8a2cb4686bdd2a512fc76aecb2dccfae87424c573ce3a1e4f4b1f8973f,
                0x155f4fea9e85200886b75dbb742a6948aed3f23db22b4b1ef6892cbb61b19485,
                0x2948718482c3d1bbc0b36e1831661246d93853c8489f30268176fafc9b12d1d2,
                0x3049d084964ee95ca36201e39a9f481091b34463b12228c43aa3ae21708a1458,
                0x1219acad06a1c14ab19dacbfb3c33866a30e6a8ff6707cab1b88b0d3ca9c2c72,
                0x097a45da0f939ecb118619b7d494596869d3ef9b90f8dfb1e219e73b31f1c62b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs11(
                0x19910b08c9c95e378ef16b619a12b099e29181ca0a90fdde175369f85b6b3ef5,
                0x2b8e58996ff697d07899b965e41af6abdb56b1a1492f359bcb8b113795f660c4,
                0x12162b7d2918acf095f18de47d93ad25b330ae8c1931cca4dc87aa05c7fc3305,
                0x2f73d4f50ce306e1237552d00c178b797f032d0b1f22c87b9535ed8c29da6b7b,
                0x0c30a354475f7397dd5ebb85c980d4126d87bfa974ca8627a9d2dd9180915eca,
                0x2d757ff4002fa531cc00cbad14cb9073737c26e2bf3dc12902acc8090928056a,
                0x249539c5732a277bc0db4f6fcde9bacb5cce9ebeda52a53eb8e6fb5426d4f98e,
                0x2e7b6e86b4a8a44f0bdf5f17c0dd9869212b8898d9bee493c685e5cb34f5866b,
                0x261c5362a1eb54bae5eb122e4e2109748b170c50116efb470dfeb76f7c915ad7,
                0x033af21bfdc65868b4ed6b6acca7228de04989a29b3bc37648f48577cb94f24e,
                0x180f38a970aecfb4e2780cf4d003c5ee8b6d50ffd53d0d2c2157726ae2ab200d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs11(
                0x2b4a529fbba82f3221793409b2b423806f8173c2b6b844d1171267631ebf5246,
                0x2bc02bbbfd0aecc61617a4ed4f193da005c5b0eecca9aeafb8f893155323a1fe,
                0x2c5cabdd8a49596da65bc9518431667053e68e428f9acb7ae20b765573ffcb03,
                0x1eed83edfe959a3b4a17749a9db512d03f4fdafe58a4d9c34d81a2936a77db09,
                0x0883c0ddb9745e99cfa5b1ae37f38b039239deba519eebcb7650359ef3310948,
                0x1eeff53296939f1fcf85c4adbe35c336b81ee34fb64c1ef11b46d8ce7af97126,
                0x0cb9cbdd32b8fd2a5624d7475ac39c1674edc3224ae2d6ecd37cbbc2d618cb47,
                0x081113df858323be32a3fde99ee289c979794b494978006aac4ccf601706a50d,
                0x128e1cc65cbe33a43d56af9bcafb36fb20d74478c4c5c3975a13b88cdc62ef83,
                0x2dc9fa8cd164c08d79ff32e4855a3c37a2036cb91f618e6241304b9e61f55399,
                0x09279ba8f42c746a49ca3dd18f0592a021d6292e2683a4816cf1d784741f3b70
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs11(
                0x0720e51017a08842f6ad773b7d95246f7f4342e765f5bca62f4e7c052cebc46b,
                0x0b869dcc24bd3d4eec1207fd8a559c74f7307f756a190d1f879aa34278e205bb,
                0x16d986265738b8a49c59f3412a0db9499cc8f4a560c8851f48ee21857fa89b9c,
                0x2bc5b0b94f5d9de6ea5647110ec28fa10d221aeb37469d37d897dedb442335ae,
                0x0914759c59d517d2c84de4c123f0cbeb73f7b78bfcee9c9dd541d7c180f95d6d,
                0x09e6374a3e08a471526a6e64382b0a21238da5492ed33405c51da3c7f0f42845,
                0x18fc4ddcb5616b41c538c8355f69e5ee6d1fd96e68f7e8958a61a334ee552212,
                0x1e05c553e1f631bf4580238ecc2ab7c1c83aa6ef27e0beed61d283dcedd65a9b,
                0x0ad7f432a1c17866cd0faa440e484788396c9ee8ce74e456003975e9d20e3328,
                0x0cf934a38c999644316ca5e37c388751a77b85d593f505e132ad9e636491d7af,
                0x2775831f2115cb64d91d4f24dfef14ffa09a74c305ed9a52a5975e6fdbac0b9d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs11(
                0x079c21e62cad8dfece6411f4c2266e480b582f4d1a9c913db7860dcd6f38164e,
                0x15316205e7fe5f9855e140bc792779cf26167a9704ff5ff329d7ac7beb5e9f26,
                0x2ccdb543aefc68d00deecab949e09aafa1ac2f212171516c6e93e3dd31e9f495,
                0x1f4ed571683c2991b8d2162b1029f3c6e00e5d83d7ce02904f067f36f5018cbc,
                0x17c91a09ce1184ca1526d6943a8c85d2b4c7b6a72d509e851bdce1d6014e66e6,
                0x275090ba29bcf606552e52eee133a9600ff1defd69520d0d55877eeffcee9374,
                0x11256938cd233d0e557beb4f144e506cda17758ba45af3735d3d8171940d225c,
                0x1f0cf50284b0d574cff7a2e821bca8710680042ea5d3b1ed4a105dc1f420310f,
                0x1ea9ab0343a63c44b5e1b92ccc725bcbf2728b24e1170e2abcb643a69a06214a,
                0x1f41e33f5e258fe3aa96c775eed99eca9bdeacb53c3befedf44a6b1b31453222,
                0x1e1387880837425cda96fb9e8d58b0c275b492c98fbd37f0acea032219dd51f6
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs11(
                0x0f70be404512136fe98eb7bd26e836e8bfb48bd01469d431de27233155fae358,
                0x081e18ad5e5cfbe4b5f583511bc5475f2d764f6e64553b61e136bc4295874d71,
                0x00655496756d3bceb2b8276ebb1c6086b4a9651787b353739d58e3f05665f321,
                0x2d029c460c9a8329c66625a84d59c7aaf48fa5dc408adc850ef4e5030b005775,
                0x0509c10d93935dc71305039df6c5c4fa77d75103e60506177c20710027e957b3,
                0x1bd9b248bfb1acf9e5ec2a2c3edacae8e348aa081cc701cc91458cb63d5e13f4,
                0x235b358ce73ff660a0c6ef405085d357dc9ed1e79bfb58089fe17c0c83c68786,
                0x119c57c85774ee0ea0cf12e8e035b35b4094ac1cf964e3286a8a1651f89fadb5,
                0x10ea6207f2b2530b55b4e8d28c42d576af302b46930364c5385d14c5deee31d2,
                0x0168a17eeb606c2fde0646283f1cad59b4d6c02c998fed72d15f84e3ea0c438d,
                0x0a2cda005fed2a747921bc387fe7d8b63266c9d61c1730b3849646b695df71e9
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs11(
                0x18c069aa1e9b241655dea48322a8c82592a961412fa8ecc4b41f523261530acf,
                0x01c870ca809e05d1c8714c758d210c7ddf2fca8292a63ed90cefd63616a82204,
                0x06161674cb910905a97f91fff60a15871817beb8bea718e912d5efa6de49e3c1,
                0x1b1e08a3b26b232c5ff8c28c073974c570b6a27082baefde064f16dee21111e8,
                0x253c8118bd5ddb5e03d400d7ef67d28024cefcfd1f1fcd3d5eb50230e0cafa87,
                0x12280772b2cc386672dff310912a5adba0b3219230ec513da7bcdfeafcabefb9,
                0x0936493d1ec1d51877769bfc1a3f244d92016417ca2646f21abb64e1a9f1ab2b,
                0x0982c748dcc0eb3eac2eda32c140f48e398df7e16c374b4ee9c936df46d97207,
                0x154ecb54905065027e78e5d4a017101e8e154ca9dee7b29d0e36ba4dddaf7bc2,
                0x1b1435b17d6a1da13941531355705ffcb60b1e8ec4887f75d2e9f47d6e71a58d,
                0x11fee883426436d417107e3aaf3e8c1db53cb9de60f9f7fa9def253f3a76f3c6
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs11(
                0x25e7cba67f9305eda9d395b548e90168d2509d559ad73e27ff2e0e81dab91c6c,
                0x1ceb19141f45f3c8fe337e86a0fcd66a1179a9072a4be563a717c3c27c2e9159,
                0x1a56e0c91ecb77583be392dcdf7fd344db131cd2c7188ee55f11fed511f8105b,
                0x1ac45163f97897df69c56f866a908f898d89748f7cba56d3491e619164b5f78f,
                0x0ea13331540969dff868763bda969d2aa694dc1ca422325c656913e13dc06dca,
                0x1a059cd14251ec489f53cee3418b679bdcda6faafba41b0a3b30d0915eaa3651,
                0x14040e4a2a39f6617e4d44c0b595cc9d6bf4fd474a9b0d323fa9290e3cc840a5,
                0x20bd0b11e907c2ee49caadcfffc255828a39d9d7834b6b9214ebc2b4d599d8e8,
                0x1c8bc4102fba472c874031ac13fabbe3a5052beb524c0c49a896904c96e8a8c7,
                0x2e95aacd389de4a39666076ab47e6492ece63aecb8e147f07ffc7c67baf4c929,
                0x2002790ed7bc212ff1f32b9ef361cc4754c1a61d72a1662c5db65b102ff6031d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs11(
                0x27ff18ae0d90f6becd7bc639137b25de65bb2d8762632fb29bad1f1bebee76d4,
                0x2d8a87169eeae7eedca7b29e9a59a1ce9eb60880825e3c7e512cd4136c015e59,
                0x243baa8b4dd25f14ecb9256c2108c96cea08b978947c691dff52f670899d5fb7,
                0x1b18f6a8fc5075e16ea3059c5eebf52af9ac677518bbe6b976ced8b01b1dcc93,
                0x006adbe978e27734b224fabe648744c7f417ca5dbd452f4ec595415e955d6460,
                0x1c9e4d8bedec70622c35b5c2f39bd026462308d5310c92dddde7c8b5a48c3b33,
                0x1cd1ff4a76e14bf186f5bb09ca8b16f8ee8ed19f8763c3c1258ce2dfecdd43e3,
                0x28d83098dc0793d8cc1bdec3e6f3de8274904e51c50b6ba308850a9306a31e15,
                0x2428651fe59787958c4b282e051161b4237f1dfb7344b929385d89da59170ef8,
                0x0843b0b893bb9d68d3fa3a10c9373968c880364ef4cf9e4affd4b66e19acdde6,
                0x070b0f6f058cd23a3c891ba3ad6db4cb6bc8d24974a18e2d4239572a81e8dabd
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs11(
                0x1ccb5603b2ba0388a02efaa6c5c1c79333bd440d5ff8b49068cdef868008aa4f,
                0x00cdd5e7fc38490193b9061e8296e89ef884eefb26621d41f554bd8106d5eca7,
                0x097d4874576772aa4db531716e9a2915aaec0e4089c8fae9cfa5d21538a7fcc1,
                0x08d82fd9014724192e15bc3628541c4e77480672ae24cf2ad5be8ef062db1d30,
                0x0d3040f3fcfb1cbbf38a37b16ab983c559eb41dd096a5d9eea922580edd6f555,
                0x202331f727ee047265e649b0baa836d2cac7a36151ef2a333418450887714db9,
                0x178905c779d0685f6645f80477354744a795a3441e2f43ec22cae2bf34e68bf1,
                0x1ee7841183e23a5828ff8af2cc09e00614e4708b81f52d89c4e4780e4f8b47c8,
                0x1a4494cb10e070184cac83d3e825baec315a7d98a82f50c8ddd00f16f8f6c01a,
                0x29e99794d2c7da576b15e1e370ef2050dc64d10e7b7e0a8e36b3b834ae581a7b,
                0x0da3dfc7926132f5a53bb27d31e561c250eb2874c8f093dcf0c8567d3d6da265
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs11(
                0x2ac90225c15759e07cc818bc6b45bb5523fa407573922ca577eb99eead42e063,
                0x05f7dee52294a1aefd03a6dc5baddebb20a51415d5bc22929b92898652514e14,
                0x25ef1dde679065550ff6bcc1fa0566e9b79de38ac94ffca7ebe098cf4c5e2b62,
                0x24f576b2a24d59a2fd4ec09c614204a7c0a54b04ded2b8f8074433b1eddaa22d,
                0x2da4805e4e9d9fc2417d651e2cf72c4395e6ca6c349d7069e04cb1e7b6a618ef,
                0x0e7e045ade01f5e508b26937eb9bfcc216f9eb4501f50d49bf8e913e09a1f8ae,
                0x2126eadba6062f0645d3076db7eddad51923d34db58fc8207e924a75cbe26b4e,
                0x22156d0a7e7d7ee800f1e3a298a34fbc1ec9cfd13b2ae2719c536ec3adaed41a,
                0x0910e34a42c4f65fa7f45c6ab87363f0d86b866a035d7c678fc92f7609e85619,
                0x0ef1d7b82987565a590f64843cf908a81390535cb29fbea41eba6ee92ec8267a,
                0x22edb0cfb6cae264834029d3150044d9fa5332a5982d5ab871c0fbff854fd053
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs11(
                0x1ca4c0a04b17f6123118878d1289d882f6fe9d7b9d5fca2a0abbbd321412a66d,
                0x19c22df6e8e1ea92232588c2e84673a48fecab8bf0fe7b4c44f639391a35e1e5,
                0x0e731ddb013b58807d3eece4d10a1afa387c74e4afa02f9f1552499d83605a37,
                0x28bad4c20ee11fae723cc39412b222297e265f1bfbdfb85c50a36807dfdaf9dc,
                0x0f828fcdc6b110d9e08011303cdb20f50a7b56e73fca32a28f9bfc6e86bc977d,
                0x044ad7768cfab4481ef7cc87fc97c49b6ac101996cfedd30f0980bbd74d25282,
                0x0bb4ee5e81f115dfebe50f155ba8c97f5e1339c7611d136599a267d95ab10e00,
                0x1abc83a9afd26694775b7830e326edce227422a0b2239fae7ca46e5291b06794,
                0x1d5cd1dfdb5416661ea44e21b4e5586d3dea7f2a286a9680af0527d53fc80632,
                0x24a8430dc8be6d1ef953e1637bd47862f365aae69c7df18b274737b0fa6dff75,
                0x2c2a46018fad1969f1119f21fea0fbbc767e8b54978b20b228d0a424cc35daf4
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs11(
                0x2abe830f509eaef10917b1d8b90c23489c49910136137b7e8818555926d2d33d,
                0x1326ecc934030c3aa42b471288d5820b7cd6c36120964a8c98fce5bbc0b74e15,
                0x2832317b89082b672be7156aba46653c750c8b0eba2c7b0a8a499755cd30bed9,
                0x0d9ab631444bb08d01638dac46e7e1508266c12d3a39179dccdaaf1486cc2cae,
                0x102109881609763134a39e0bdc757d4d06d37ae141640e958b09a379d68ce48f,
                0x29dc680f2ee0b2f11d270c3a680401dd3c153c67d8dc36bc719920d74cf6618d,
                0x0e1847016b4886265bf191463846d7ff527ae9b063aa3112d95b9ed21ec1f8f1,
                0x06f882709dae2cdf3a4ce63cdaf22ff873575ccb220fc348c3d0e8993715f3a8,
                0x03af252b0078b2634b709e27e524c69089b60c0b13d5063e636af7757566885e,
                0x069c1542417729933652cb537e873fe625e03d8d8245f0d5b4477e59d9354e99,
                0x004b6406097c0ffd25b3189d8ef1e4627970334858630e1498f5d21393032008
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs11(
                0x059362c7755b863777170dd2ae5cbb2ab28f5793e821da12faaf097a939ba1be,
                0x26f12fa3fb1e2ab821b879ec1a88036242be17235fcdcfae8379e4e241db1df5,
                0x0b1b5ace648641dca5b80eba1e3078c55e5e30a9eef4eb9f6edf6bb2a12a4912,
                0x0e880ef478ac4f56db33ed33e1b7b26602e08f62b3f82f61eb81e23c04f04f1f,
                0x147df467d9e23dfa5a8bf18baecea4e8c76a2998ea15d23d757532bafcbd1690,
                0x1cc595943d1e6eed445251920e0d3c40467d2173ecabf83942cf988609833a6b,
                0x0e665b6766b7f9d232967220591d1527757e56b426d335f20f9bbf37bb8ef722,
                0x20f66d772c405dd018405566592c54daf66396178b1117a74d14cb6001a05fd3,
                0x14a300e4f1b399906b23807a4ea9aa2504cc5053af3a77ae08b42d704a6c06d7,
                0x167f0fb8eea228ef99b4100134cd8a153aa7d25b0ef05a8facc6a80a9e7fb928,
                0x0dae9e77c0eead68d2dfc03d75946e104cb87efaa03c0027c21071e38302c524
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs11(
                0x033e8ebff77d108d614986eed6bfe1e8c9ec990d36164985d4e8a3871954efe6,
                0x02d71262119707c1e8462f0f0d340455ce9ba562d54641d49a8515cde65ff918,
                0x280b83de7bee4e53ce20b2cb35988003f4ed8aef7dbd9ec6207d1a77b66c4d9a,
                0x036a9e6efecd13bc54504092614806af16fedc2e9f25490eb60d1e4647f0b098,
                0x0988af2fb8f5b063e95e538bf4fedf6b91230f3fef78afa8c9494d8abf87f652,
                0x0a1b03b167670ddc087b876271b0191f76899e7f0ab6e0b2340aa41849101425,
                0x1c7339a50e8156b026ec385b38f99335c9f1a955adf6194d87a4fd1e58261e54,
                0x0c438aeee79fde1dd512bdacef76098b975c9f2cf03e3516b604a8013bf1da2b,
                0x214d1eeccd70890099016e8508ce7adcec6eb91c7ecc94fcdc45934a471bbe6a,
                0x27e43d2557d38a83d64d693628687c39115118251f96b35bcdc316c8fb17a04a,
                0x1f8c569e6f42845044d90f0f605da75581b4cae92a52d7726390f740e455daf6
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs11(
                0x26dae3acc014a958c43e7c6b285be92c85f42ea97e43c71574f723669cfe51a4,
                0x018eee405fe7c91c59b2b1c28ce8c414c0445010c079f425ec4ea537c1a6cd8d,
                0x0a1065dab2c4e9881d60b58ed0ed7dc4bd53df4feff34d76960d276232e65a5d,
                0x175b475e2f0fd2f978b744bda63e8e40af5eb464fa21bb02746f0672f08c0679,
                0x25a9056ed79f1a3c9d74c07e84beaad2c13dd23586d55d21015b3fa0e84b0409,
                0x145d2093c268cc58a7eeb130bd5709fa17095641af200a70eebc1a0518300243,
                0x0d178b530a7ada2597a03095d807e7c15f43b5964f6d16fcab0dadbfc67312f1,
                0x26a81ffb51f6e07e6e92154dd59840f183c774c40cb9a7d55d589b0055b5aba1,
                0x1c7d5ca6796a308af2a6881f853d958de5fee0e0e7e08d8f524c188d4893a969,
                0x04a673d88cb158924db68cbce94e79b9fae5a47d14cff5e3547964edac11f565,
                0x106e2b7f7fe75ba7ad691e8c4926ada135a08436075e5b15e1ed3b23bdac5bd8
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs11(
                0x1667c891e651110dfd6c565e85f1efb361b6b2d4016a58ce99a0b1ca89949e86,
                0x281c07f76ddbc2680c5541a15520057337d33f6e47b9d6a92e3471f1689a2d23,
                0x2cf0f078fa5ea4c2d1becbc52a579e53d1e955f9cd2db865021a10cc6a24138a,
                0x0c0bac8ebe8a9277e15d34ac9a411a57e4dcb0141a928885e50b787dc40d3718,
                0x1579ff09df34bf3cc501c38f30357373747aeaae37b83bfb1ff821f34bd16150,
                0x0908705822dd4de62dc2ff5101845f074a04eebfa47145ec89203e7e4ee00cdb,
                0x2e2ed4193c17cbadae08c48344ee9d1f7c47f045f1564284f879a2277056ec9c,
                0x0b358989d2b3f6390d38a3aa477238f7c89417e750dc96c973047d2891257ee2,
                0x0ec8ccc24c6d8b45befa424f653c6a4b07c0ca041b5e15a29ada722f6e982d01,
                0x2ee5f170fbab84c83f7dcf5c955e4c96a5fa8cf88a86326faed7f6689d57c9de,
                0x0db77927c095101be6a51477fd1028177e7ee28888b37d44d3b5a5ce8738c26e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs11(
                0x112f5e0bdd8d9060fcb1cfd77cb23d36a353e0a6caea569452fa3198af4807af,
                0x2eb6d3b87bbe7cb3dbfb0dcf4abefc903efeb6589f9ecf9268559d60172459c8,
                0x0dc68c0e4f0894ef700fea3aeb5cd742d1e79bd233a8d1b1a10c51868877ea0c,
                0x25a9e7fd9d132c5ba398153b9395ca5358454e293b418d006852218d0f2cb315,
                0x2816bc8c349632b20bf0cb4a5022dd57c2f1d5c36e2be94afabc888dcee800dc,
                0x11c95a82112070f1e9dba537290e75e0749d6264c1f23992bc7942b3fd08aca2,
                0x2b2905c347c1577632406b373298d9d05cc94af4f2259a085e1be4ce5de03d78,
                0x0d786784c259fec9d3d9c587bd10f70e7b7083b467a69b5dda1df68abdb908cf,
                0x0b983557c0268888dc1879a1e03df2ab71367d1d6e71894ea43d2cc059c30aa1,
                0x2578ddd120f80eb592a86e8eedf948bd470a2f97a463266cbedac124c4f7ba5f,
                0x051757a0d294a933d899506de2b7742dccb8be70ea92715505a26f1f7b50fee9
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs11(
                0x1a473e9c923bffa09b3d50e1b9798b466bcbc19318d7fd716df6a516c97d22fd,
                0x17031ecad92e6c20a581a646269a2edf3d09d6310cab43ce27e4d963cd1402c3,
                0x07fde20f3962ee12f7378dc38ed68f736b339fa3eb95ccfc38427c8a442fb212,
                0x0200d39591cb1d2013fdba4f4b55896fec620f59a2924ca36a11f5729cfd8784,
                0x1a56f20317da4027cf9f6d41b87654bc4d1344145e2079cde10789b22d83cd28,
                0x26ce9422d72d64a900539a4534ff57beafecd057b22e46e58b8491d698f988a9,
                0x189ded9381d477aad15dd1abe2eb25f3e5486a5f7811e5090073101ecc88bdf3,
                0x1c8b387108c95c70259d70ab761a30f2410b15c9838bd8370abd829a3841956f,
                0x168102abc8a3e47417453dad3ad44c32691c0f8c09d253af00f7fd97d60d3ab1,
                0x16a163ab47271e403b14af4cec2553c1e2781bb2665177aadc1b7a836b03516f,
                0x150351c66026bf842826679e7481ddde25c61967fb4176e0454cfafad877d367
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs11(
                0x1406d29d87299f89aa031d1cae5d1dee6478f532a0c7ce7f0e7bb1c929622f89,
                0x01bb7e84539679c9d95e6956824baa6c4ae5a22971e2aaa0502ee2aadc4a473c,
                0x2b79b2e7a85844f9172eb1459af7094daff39a775d3f4dcf7d3b60c6e37ea74a,
                0x0eb809e22fd864f7e7eadb4e6e6bc57064b9d8496866210ee9526da927d2726d,
                0x2912e63b29e0e473457d1d4f242fa0025edfada3f280e0ceaca4e57085225350,
                0x2813d10f015a9b6a87cbefccd645aa41bb00f655bb873e9cb213e1ed4d7cd979,
                0x09e2b753b0e69e2eace38a4df4d6622bef349670a52d68dd4f9e7868ed0bb15e,
                0x093c98ebf6a6d7dacd3a33104a92538d083e5823bd89cfcac1cda429bbade2f5,
                0x1c615c07654379fabf263bab35edd02c42731ba707c2a19790da0541a2c02e1b,
                0x03ef9107b6c954ab7b512179d23a1cb31c3983137360ed76abdccbf8170e54fb,
                0x1db2e1673b4a8db9a5901edae05fa91ff81e6705b9fc41b40ae9dc0e3af3d8a7
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs11(
                0x0f581bccde3787ecb57863bc41370767d00abdc43e9ed737998b5fa38e531535,
                0x255c2cca2c6106fe1a2ad5eac6cb5c734f362279b43deebfe9371963f64004c0,
                0x273b94cc634fe86ffd9d8136f080e8e66e89367185a6cf765736b59e6c7d3405,
                0x221d02829727371c01d180f12d88619cbf4bcae86e46dd3e7c9e8cb971199ab2,
                0x27b3f7d1eb3f3390806b572497b4e3a385b1c540d37d511bfa405203d8b18210,
                0x0de5675e9668bc6325d34e56018d1b7621ec56a43213401f87b084c63e3e9346,
                0x26fcde78ee029120fca39cfeca49de0cd5627f182038f0ba56c6d9850ed3f4de,
                0x1c9a31778aa6e024b69a39b1c5124a4bf7c1ee8c3e17257c520ccc44f33975d4,
                0x2985c76270a390d113d29901383d4a5e46ca20e40bb82f50b22d9f1856609113,
                0x091eb820f97bcc65d31fc461a09b837238cdec38aaa34284f605c0d3f9bf310b,
                0x03cb21d727ac5b0189680d91d1c101653ed8f1d0f1fffbd2645dbffd79125452
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs11(
                0x0b1b65d39391498f0bde89e7328c20f1c16a146a2067f40c7b1c779c69e06351,
                0x1c4e580168a85b552f78b8dcfe10eaa602fc418411691406aa6b81d718d79a19,
                0x0acabeeb57e0f631042a015bf4284c99550632774c8a372fb6dccd9c7ae57eca,
                0x06a71d2e58e8ae4593b07c675250d1a55298a6c35e1efa2219a83d30d9417bac,
                0x03f5ca31ff05156cc0a073443f0defc5156748cd1772288cf0e1ad52696c6896,
                0x0d0f465a76698ba9a78af6b48cf9c960550c99fbafd268b616f296956e2f7145,
                0x09e30ae394a21a8a210c2917d6a7a6719b72c0a7c8d509f4e17ade4aab41d666,
                0x1d4d6b0359f5a74520b764399c8cc6f292b38dfd1bcc0216f6f73867388ad0f1,
                0x2502a53b59d518b7b09578c5ab9f2fa75f2ad9869b942685a4120917611dc010,
                0x304df6d7b7f288a6516dabc8b5c7d8ccc35fc8bddf442add94989f0bb4084ef5,
                0x06a1121f2aebafb936277c4cf4b53ad62b8416fb001edbb602ba3de619f267d3
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs11(
                0x1bc79560610450f39c6f55be99b8b1b62a71bb791d491e8a23efec13ad0be2a4,
                0x24dd411b02246ec334c7fbbbbc94970efaf3a99eda6bfa7a93cb2a1baf4e01d4,
                0x23a3dfbc7560ca423398ea586e0365001f7d148d6aef9e9b74194113bfc2f0fb,
                0x2f0b557ab313d9439750a0973ab52bd6bc247b4d28b7a11bf4e09e544107638d,
                0x07253b80a98be54c152d2994ae5350985951f92da360bae8b5070416f77b55cb,
                0x00df4068978c0eed00c975392897deeb9f76ddde88f8e588b3c3e4dcfcd7c5b4,
                0x1463ae30e7fcd2583b72592b26c59ce528fd2721fa1812181151c4dbd000ab60,
                0x29b8162f5c7742445bd390c5c03e1ef7e9a23e7f3b06b923901505ee171264f1,
                0x2add5c13fc0038177e0d3a2f3458d9d36c5094acea4326fc8d4c0b8ba654a8fb,
                0x2dfe6b8f13a4a2944cce3ba09a3f99ab28ee688369b723c32a625e8fc7a88b31,
                0x04416627f3129ee7e035faff270fed06279e1dba36284c71cd4474ffb99646ac
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs11(
                0x0a88e4fe1ba6aef12ecd67fe89831a203c7e42d66a23b73bfcf013a4cbb8251a,
                0x17ff9e19b87572b498ba62dc28a9c0226eae1b5ae618c21d4c0265214819bfac,
                0x0483e7c5dd6e16ee5956f898a71599b2764d7bda4a788ee69093df64abc6e0bc,
                0x0b1393ed09bff6968d76d51b309ce5f5363c013d7c36966e8bf4d9e5a4b113cb,
                0x2a74350c41f4700cfeb2925c8e68f97da180889e46aff64595144f27e35975ff,
                0x19a4f231bfc9dc13e64f5d27c2a735fc7401f2651b9f4247ed314216b8fb4e33,
                0x1007696ebdd0510c98ff2c0d7e2614845562e71c8b523c7fb4580f64d2c1f82c,
                0x23602a0a9204bd28a0faed47260ba5d7c5e2f0e8f0e49a18b6735d162be2fe7e,
                0x2aad24b1f15043744091ede31bc0fb2590ae9d1cfd4ec172b967712b0571af30,
                0x2af7ed225e3de4474ba0c815dfa60a4876e91ebffd752d1772f9ed6edc1d8c86,
                0x2446c6d5b7ad480b3cb63dc02469e2fa62876357493228f8a3f774d3b5b963fb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs11(
                0x14eb406695fec45bb2dc1c8bb49b6cb53ae1d1861cb3ade9032a7f758fe61070,
                0x0ddad1a0b975c87b60667fdf999905e687162dc76b9c0a177a5d0d6c19c41bca,
                0x2998dd7b0ecb0b535d97c4e55232c17518daa19d725a09154099f1f0dc96321c,
                0x0542fde8bf974549d44be8efd7b54b38b87c924d30be6a18b291d6ecd05dafef,
                0x0e800f131dae9af90f4f71b1bc20c3ae308f55ae197142d02c2ea53009ac6975,
                0x0e1b6df7033ba9de7ac782c0f03237ed140fcae1dafabf8f63e022e1844d5196,
                0x1058b7d5c2ab73a8e831d3e263d07894a726226af810d064c759fc6378b3e72e,
                0x21435789c50961ebd9240bb9e4c6ad29e1ae9ed2d26aa3f4a45f6ae36fd6f9f5,
                0x0b76fc85ea21e358cc38d531fce721af90039a1f94f88f9ce857d465a6fc671e,
                0x0ec39cbcd40a71ea0ebbe4c1cd446b297efaf4b8f136ca0455ca6364390f7190,
                0x0ce1ee6c6fa725824c594c7e26045350597e72d3782d1ad9624c861b007f3aeb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs11(
                0x16d4dda47431fcdda2d7ca0588b1de3134631bac4c3bab0e039b985100b2e9b3,
                0x0f1bdcb89612bbedabc78b284e70dad844a0de07934fed25819e401f0ce528d6,
                0x142effa6bcad8786b8ce7621554ebfbf99021869cc504097bf48d612ce1a1635,
                0x240363dd27e85ddaab62bbbc4d3081b6faf970b0ac8efcfa3f50318ffebfa43e,
                0x2fc46aa98f5b5d3e7d83d4d7f5e16abcdbcd21569ba7046687a8928a4f55a7bc,
                0x0fe80a0e9a25b25e88e52c3ddb4129f10549232657ec4ab4dcca3558a7480aa5,
                0x005e91009d70894708422aea8add4b4f09a9c5d0fb30b58899d384e533fe1179,
                0x114028ff92249716fc472f71966c1e813b8e13044d09e5715e2651ce6a78e78c,
                0x1de4fe84e7352bb70ef4bceb7099623236612ec891bdc1e61ae8403c39a7c0a9,
                0x0c403a45e1c6cf0d20ac3596e4692f371cfbe98a8390127fc1a5ac135c066ebc,
                0x286cb7ea81449d1b4e4a560cdad21aa402edbfa0a37e74303d8c5543a7b0a56c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs11(
                0x1558314f052caa27b2d962a46beae980cb5dc1ab0990bb969f03b63c4112a757,
                0x0f26d2c0a731aa2887aac3a423de7ae49e16e05394076c4fb84d4dd7b21ec433,
                0x20bb1c39f85c0ffbefac8a51332f567df682d0a6c04cf315fdbe8d7fb7284055,
                0x25b36476517e76e5aba63631b7b1cb7bde799619dac77e3af32ae6e2384237ca,
                0x10113174dad368d5c3ce5d90921fbcc187d3271247dd96d8e48982549d7fa73c,
                0x1e55dd158a62ddacb30640814fbae786a1e2ffa5c82a3c18776d21d5ba249e33,
                0x041504f6cd4b37023a23bbba5817e8927c3b87312f955fc9b0afc6830aae5f45,
                0x25af0e068f5dd1678ccdcdf3c3363b698e25c4dcb2821ceed40cffc55d40a425,
                0x09b12a4d0279ef7d60e3f3209aa34a7ac66bb0b41f6a2c3656c86203bc513edd,
                0x01599330a6ece687db3488929967c9ebfadb6f96f33e8d5c0cc7ad0b49586241,
                0x00465336b75d56fc9051f18dffca78494d065283a6e9f5e1707b45656baff049
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs11(
                0x1a1a78d3ceec13a8cd7747c9dd5c0f371bfc81b9934747d90709cbcf4ef73e2d,
                0x02b1305bf32cd1ac7d06e2e93f35c6963dbec4fc6b89a28d2527922626234698,
                0x1c49e1bf3ddf1386931ff01835284d3d6d4cc18f036878c3a97a19b684ea020d,
                0x266166e1867104f9cc7090c4d945e610e0eb66da454caae8bcec298391ffd787,
                0x2075bfd3b40a01bdb08f86e929ee491ee359d51994ce1b9977c12bb1b1e947a6,
                0x2e47a45ce5dda58768261419cacf50581e77351591b98120320bc380e7e48f6e,
                0x2a0c15d5a124ed44a07691017ac513db9b6e930f74b08baae2f874d04ade21d3,
                0x29d0d47f58a2e0a7a6775f7270d749b81fceaebae11d8b80c48f169dc24b91d5,
                0x088d201a7addbae6668bd7610adfd2781baa1f1d09d3e7670e959263e5c7217e,
                0x11246c345c3ae125538f0f8576ccfb2293918d3a493c5c76aed1ff1ee68063ef,
                0x090f03f937ca45ae75dc3c6940f2fd2bfcfe182b890f1cc1b869dadb66f61c9a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs11(
                0x23bcac1367f36d13bc5dbd81970dd25a15a38eca269bab248b80d79d1a8901f6,
                0x0a524e67f7ffa3d4383c321edb89392837fab5b2a43c394e94035a53c6a50055,
                0x1a5e4592a60426e08e59a4054c17d8ca1884304a74e10a97d5c1a11b10ae3914,
                0x230f2293a5b0e2ef1b5d88f5e38372475281a4babbd40f84b6369e6bbf57d0bb,
                0x10b4f2fcfce624fc16438c37481d56d0123ca2379686be4aff4cdaeffe9b48fb,
                0x12bf660473a6f250eb0766d95ce1d5ad7b4599e584b0f393deab58d4f08ff780,
                0x05aea1714f85aed92d4896cd2600359c9be1d14e6faba7333ab2c1e5e7d348fe,
                0x04d25d24747c5d76321f2ec6c84c1e51692dc1b05ce0bea71802eab39c39825f,
                0x29824cf6414d77bd71c52b441b9bdeba0208f5e2510da08e177aa5def465c969,
                0x03bc92330d8cd86d7175a5bc9349e00c34dc403238ab9f95d01f2a3a46a502cf,
                0x0aaf43ca81c9ed3eda2614ebd1c718e4a293896bc484e4710426e5479e5d3b57
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs11(
                0x0191fac5ee867d6e1e26195c1f7fd9749a09d8a6be94d3b91868c91103b38153,
                0x01d29f43ff0d2a6464d767a9d0c9da348f94cf488cf38db1c7155048f1c09e87,
                0x1efacda09e1c3188d57e7d5f8d5a625c54315dd192a8ec9198a63154a3e74607,
                0x0e081d256654510897526d80d7699fd806382654cf1e92ad3923133dbc83c7f5,
                0x1225f2b01b665226f216df7d957c3ea2003b16cfcae3c59943a90237712cb458,
                0x11a5424bc198d41b5396d6862b7e94a0a0e9269c7a0cf7b265a9d96350c196f4,
                0x14519b9346833ee6d009d8f1a9b0cb59132c3e47652069a919e7ea255ded7f4c,
                0x1154b251660460ce5980420a63a7193282da30d43f5899cbe1af6ddf90011a1b,
                0x0e75c18bc36de2dac67af4a8279e1306376d4ced83196dc28d874f68b724ef83,
                0x259250df4c85489a103801aec4d9f3331a54a688cdca98c12eed28d5f5baa632,
                0x036241b379c69a796f454d26837cc426493f31cfa5d14b5353eabf6c80693a6b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs11(
                0x279cefc1ab65306cee87035b6c826490a287be9bef5d2f656138908c62fec814,
                0x1a9b9c484db020d2d13620cd296a84f955ccc1332a58b3e6e8fbc59900b514ff,
                0x1311e2f3afda148f452a46f4c1155eaf1c49df8918735a943960de77de35f262,
                0x275c2885a470b19e1a3d496aeb5c3b5aac985bb81acbdec09b7338a463ebc871,
                0x034f33c083f67817bed63bf23b59a21afe270a61cd5365fc60cc070d76dd119f,
                0x2d7f88dd7460225108cfdd105d078c615bca262940b14519e8ce5e2da2fb1b52,
                0x2aedb24432716cb42237d0324d023931958cae6c33987031378a28e5acc6d743,
                0x0725ea2f1b223f99a6e2b2be2ddd46adb54b2158e569d71bf0252c74663e6991,
                0x0ac1b45c4de426132bbf6a57bc2c5eed08c4d4a1e414420014db761e726639e8,
                0x0fca58a6ac836a2546c4a5cbd20b5a0be868d06efcbd7a41fb1a68fc3c9d1d24,
                0x06e944f80a6aebd28f2e35a006659b0ab0c5017262b1788cd2507444bec0440b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs11(
                0x01a27383b30c57f3fdecafee50cdaedcba211f54f1ce97251ebddea3a04ce312,
                0x173a0bb7b5786b5fd3611362802ce650e3600bd8910f48c52e28ff43406630ce,
                0x17cba3d98b971031dd8020e446507ad0702f36ac1970260c205ade3a17d34d3b,
                0x1dee2a614b26fc1d367022bc490d180b17f5b891d950d8f74faa56ca13d28cf1,
                0x1e07402e7c4f3e0e45ae4da474b5431ef2db7af57576d06c2427399d75aa20e1,
                0x30086a5da0f864dcd5d83a1503d9682a7c7c6b46fedb864ebba19ea1ad05263e,
                0x0b4a7e440a6be1cfe1ddea597f83c34733fb8827711ec4a258a51437c9fe9aa4,
                0x1cb251eb5de4849230709a30a9541535c9fca5c4e976d4b78e3c2f904b4f6bfc,
                0x0d34ebd806d82519f58459e023293bff78f74c4f28007b31344b91495dc1eff2,
                0x2270e20b9db317f228f3d1bf0a5b2f1a62c76cf3d928e405a410fd4e01c4069b,
                0x2f9c6f8bd990854236e4f612617f6be2070f689b3fc569eb54e8a362e504933a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs11(
                0x09ec5acd9a7ce4cc515588f34b9689669b28c00f28803afc793cba8a58aea9b9,
                0x072f8e25ec343bf90bd3ae6761ea8a6ad7d8707d5ad8a2c0438b90bcd7723c82,
                0x09b856d9351b2b43d54733f23182c90965412c665aa761c2f71951786fde2a2f,
                0x17a0cb577be0d92ce7a36e3a9ba79ca306a32a7ea23b5c643792e682e34b19fb,
                0x1823d874fa00e7ce886c2cb13a6cc0d6de39307d9c85ec72637b2f0baa0a37e7,
                0x20245b058552e4d92619ffd5c51626bf9b85c9908597653a62ebca578c291d10,
                0x010cf5e1e6062971bc206305b98be76fca59e4161755a36308034090096cfd47,
                0x0c727eb4c023cf1126346ef1c7a3f1b8fb860128dcb8d235fd5814c00d1ed391,
                0x088a680a4976074f48659e9b7f43d99371121bd2b96f12de69d45f06e3dfbbce,
                0x26e489d910e839a37c884833c7ac5719986cd9e44d7724f7af88f16ccfec5897,
                0x20a9c1516976ea5cca95677593daf918441caba76b4caedb6ef3d24859f97265
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs11(
                0x1df0d33ce6f8360b57d6d90d2d4a1d920d172426dcdccde763fcfe55496973e7,
                0x0491c38555ee338b05641e785645a1ce170b3531a14ceff7bf62ff1c8faba0fa,
                0x2f0f4acf4f8e88903fc270c621cc1b071ee869fc9b62c42603a75d4418cb25bf,
                0x053507ecdbf9ed6ac8dbd80569a02836b5c33257992739abaca44c7b6ae1f1c1,
                0x19b39f5fe6ad0f6fe31c6e3d339c40482c9b29d6e59f86802cc5d7e1edb2652b,
                0x0864e0d91b660f1c97d0f17f04df99cf52e0213e7a848dcf6d7064d01c0df2b6,
                0x1a41a28a9bd851032992ba4c26721b65f04392d1c674b13c0c824aef094ceefa,
                0x22e4fe17db800791633e07c2254c865bd40fed3ccd5c08c45fd5c0cba1b554e3,
                0x1ed97d94008486e491b1e8a7e6800d16bd0a4b34626241f089fcbbac58522a28,
                0x0d5674deb6404335311caf936aadccfb29fac49ec921cbbad87064066f7f7ba8,
                0x19360f3f14c28708ccee7e926a3f7a9a296ce6bac62fe439d173ce15ddfe106a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs11(
                0x1771cd8d2b90c6d032e53c0e5e078dd6256a5d17f83d2e1fa972ff1a9bdd8148,
                0x015088af85335a75d2a23a6d5d743326ba77dba541596a0be4f37062ee4f9973,
                0x301d9334c3f417b730ed7575835531e763c13d61e268439afd606de01c71a142,
                0x14089f1fc9fd683a6c96cc2fd063628d8e8667487524babc660647f3b6bd481e,
                0x03fc7cc512d54a8c1d87b4816c3cba5316d198d5866592bb404ccc89ae49d184,
                0x019c5b7b4545d1e5ff110c2d995434145068b659bfc3f4add2369e1c2b99fde5,
                0x0666a1ae10ab18c4265248bdb1cec265f871f9e5d8f9fc0766c2abec4fa1493a,
                0x21c3db1ea537174a00a9bbb3c8fed17dc95691da46ff2295e8843537e99b309c,
                0x0b24a83a40d82c70abdcc32095c75adfe2611bee2c35abc43c5f349a410d5a5e,
                0x0ed446daa74df47cc5175afc263aa82669267acec1102524e73d2b08e5814b3d,
                0x293b33dce6b01867e61da13ecc6a8056ed4dad5928eaa0d8b569b93a48b400cb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs11(
                0x0f43c13fae6e8f6a41803f5f8de4933d280f1dee2ca6a692ade0e2a17513e64f,
                0x1870b4d19f06ca1c438c12511ec74191d67c1f98af691473a1553853b1a5551e,
                0x2c11e95ef4ab326f09f31b213aff711c6087d689d8fb2c206f9c0c6a3e661be5,
                0x0b5b41b35304f1ef7493891483ea3af782dee4860683d8dfe9432044ea4cdcc0,
                0x23cf595a31c32d46112c0a09733a1daa20a6b2701d7a5f972e94204641b72765,
                0x19a79955e195ec7b3b1c9f69a3edc3312000dbd3363ead934386302200e4df04,
                0x07461c7b9f18360a4ac186718f7f8b8ee224df520d7aed01517fb658d6e92e5c,
                0x1db6801a3ae17a0a4ca08fc1cefd7e173ab4c09e1bd007957beebb063f790a18,
                0x078e2ad4d331a6d25b4f91856a248a8e6f285815cc2bb0410fda537c099336fa,
                0x1987d5a19b001c9deefbefad070000fd7be0bb80dceb294a6c42c129b6ac7dff,
                0x071007e3168d0b46d051aa2184e2e85253d248d237aebf95cd3db99413f67557
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs11(
                0x17d0656c67ccd0b1765a24f3cc0e5267d4d1c3f6144cebfacc35679ceffd4378,
                0x1e949b8e48da68614b63ddff669371613a8a39268fd32ab0ffd4f56de2f157d3,
                0x20097f42d07389bbe979970f4e8601e8a6db1e7fc7168f8411bb161b9911d4cb,
                0x20ddb87bac929982a0450d9f534ce613021e132800a1a061c3422fc14495df14,
                0x17cf192dc22d6f5e49327e8a4aa4808f9ed9623c77915bbcca3bf58039bc8d22,
                0x1ce177347b5ed4c93069379a5e05f3a39064894aac39a6a9358e77b9324938fd,
                0x066f05cea28800ba7f2eb1312929d781c6469f496fd1afd1a1e9f43fcd8747a5,
                0x23407a90943031dcef586f691198d986b2c8fe5e5eafcb50b8b6d31518ddb507,
                0x13aa03372518cd6e51b83d5b18ab972f46b6a79f48073368e0317659fb84b621,
                0x2128d13880571ed9e92879dda60f2a0be23d0105733ae23f0594eaa4f53ac8d9,
                0x01992e6f2ede88c4b6c1dbbcb1ed527a380fde90301bba018e9192349219842e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs11(
                0x046e0228d1dc2fc82b3de7f860cb19a8a8ced69be5ac57fa14e041734844653a,
                0x2473d683c061d47499732a78dd5a822828dfe25ee368f7608e0a5b5ba72c8a4e,
                0x23bd7e22dff86b895086cca3dd2837f3bb1e3da62f72f8cdc408852f35af6609,
                0x0e2255775e7c035da522116e0ef9a7f21cdf7377099912ff6e8bd369fb8e8981,
                0x2a8dbd218d56a91d22b4925648d12c49d735baf513b284f94f7d02775f906b66,
                0x2a2115bc4de7ff705790977ce461045fd19d2aa830d06c8796ccdbba1fda1507,
                0x01b2c6ee04666adc48737a01b0ff61163e363ab0e30800991e0adc142b708310,
                0x1381c10fd8223f6299c2017bf6d43d32ee16597594b375b32d403bac061b9441,
                0x03e0dd7963b9a85fc3283ee3718d0758834dee5d61d533bd3bafeca43d20afdc,
                0x2ed80093d74bf46f548d1cfa469facfa4becb42838d5bb8c6df83a6ea2172532,
                0x1115440c3fe1c8456a1f015345569ea96593de31a80dfe42baddaa1c742fcf03
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs11(
                0x04da76de55c53726a69d5fd201a4bea0c033e690a4c692ce74d85329a622d676,
                0x078172c6bebf7742e4f829c098421d4b491a952701c67a65cf6684b26b99afad,
                0x305af512bfd7dd3e1c718d9a16fdc33aad7e75ac3bfd335ed6fa7dacc7222323,
                0x11f87ef8dc5dcfbb9f79caaa9957cf5ea0469037b0a6a418bf06d9e70cfbaf2a,
                0x2640d0978fe1fcfae69234fb99d91deaac76ae0c70060617ddd09acdd614e419,
                0x007d481802ee07503356c636e781151dd2a1dedcc84f75c64c7699600d4112ea,
                0x1f6f4c5cce567e7e83f42ca7fd883746dd17dc278ddf5cbf6b55935df7db99d4,
                0x008cb62138d358c3e0b34f7799619d14cd44445dccd4d7d7e9d28368c17de50c,
                0x0dddb7d5dca3cadfcb12e089a54de3566b95763e37315daf7b50b67a6097395c,
                0x2d748954812473a8bf41a11b80fe13fbc507958097c387baaa948ba41d2a630a,
                0x04f838fcb5d8e865bb9983426dd55a028765773894c3bd250566364721934fe4
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs11(
                0x2544ee1a61201933f01d1fa5af89afa0f0a51addb85a564941dc2c95edeb3329,
                0x15b26a927b1f12b8693f6df660b6459fc2ffd5841ccd14153122151ecd68d02a,
                0x10417cc5975afaef2d43403e4bc39f91fd6fffc7bd1945a9fd755bc60fd0bf87,
                0x2d104724cb09cb293684d466964b9e2bfc0bb298eeb92c39a6d2fd09221cbdb3,
                0x2e6192e1dd810a017998c3acbbaa34cf9b54cb065aec539ce004527ff0ed5cd8,
                0x27f073f4cdc796c445ba3b48cac9ed4f4f1026b083e0298c4292612c4b96b032,
                0x275025bdedbb20a76ba0abf7b76fdb32ad89139c4528c56eb32bb9489f836c7f,
                0x1c3857d08b55aa4af2135d3e49a772c02fcf5bebc4fa6e775c715444ea28f496,
                0x10af4758c0ecd540ffe9e7d7c2c263dc6357e00d553abe0cfb028e5687e7ec85,
                0x2492d34684fddae3cb6e21d7a9bcdb7d017c0059d644cfc7fc92108c90410e35,
                0x26bb5fd519b7903364817ef138e6f6fb252e3843ad4ddc15ee1e75afa4f3bbdb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs11(
                0x1983ae7f0ffa884d803cd1c5b28c7ef38b6d6b70dff49ceb87a7a91b10b54c69,
                0x1a9b0e007433d5d41844dcbc917b9597ff3e60914d01118e6e727983fd1d07b2,
                0x0e08c454f826897c5b181e9827943dbc85779318db037c035855a1e60984993a,
                0x0e7ee71124f801ccfb9c72668df444a6fcb1e90743faece0c895b26cca887aad,
                0x20deef93c057f360d45ceea1915bc1ceed58d3c611164184e5c0448aa830d5ef,
                0x06eebd9a80f060b898235fd0719e79755275666c36e342a4801eb7166913cf05,
                0x10690210e9f5df053725f68e5c14320540243d890d063b1bf68ac271d5958928,
                0x2d9ce90c600b21a705e2e0ba2cb1d2fbb7decac68a10db45470cdb3e62c3a0f0,
                0x2c8f65b977c6f6c1ce633c246c37eaa727a7f293246c105c398785d3f3f904a5,
                0x2a9bed5440d88ec7ffcdfeaba3066dfd59c241f8631915bcb953d86018256189,
                0x279e3cacd2680f7992d2f64014a679f5236215b33f11db8ccfe656c8d0217f0e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs11(
                0x0159b959b0ef4241b56c60618c00046cfc29a69f26e31e2cb01f1e98d6898a78,
                0x11e12f5e2718257f9b0df0c4a9e710821bc2a76894507378d6ccabbe7c3540da,
                0x1b72adcedaeb8a228bffcaf52714cbeeb932be20de88258471407e19344e3619,
                0x04f1d153c878da1d073c9faf4daf2f99faf654ad59dcc549bbb11bd93cc29b8a,
                0x199d096a92dcf3cc5959b9c0461a646ab51ff804372da1d32186ae380612c76a,
                0x1916368ca97906aced6fca27dcb4e16179ba5835ef4559fe5026a9ab22358382,
                0x0280fa24b3de1b29c61fc9bb58cf2eb3c458a8647fce9595f7907c73b0dcdaa1,
                0x05ff0f0a829302b5ef0ee4bf21d4e0809490745f9fc93bad1efd29d1a209deb4,
                0x144f8b41a90de1c7b4934c514ded97e9ccd4fffca00ba1ea2f573735dd5b26cb,
                0x0b33a4478c780f9d37d633d506e508bb1d8d24bcce932829a448ca81e68de8e7,
                0x0737fe9bbbd8a17be21b51a532a9b770f070c33718cb2914b06f72a29814b90a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs11(
                0x1e388884c2af9c42dc1f9edccdf499bcca66146af80e046c60579431cc76cecc,
                0x125313aaf88c9ad08a4c3a65ac564974432c9eab7525058b9210c85f570a27b7,
                0x29fe048702a04e0cf14bd4904a74940a6f411a008cbe9bec9dcfa651e0e9acff,
                0x108af94e023afbf01369754057384f95ec1f77998c78b6ee1c73bde87b42dfd5,
                0x1c57607d203931926db5336426e274dfed34bc919edc8b82df66c552725c9c64,
                0x115d4bbc6c570953464b5c8ae0f87250d47ca736407c66248ddba79f4962549a,
                0x25bbb47f7cf8a04e5c816dbe24b24bf9ccff859d4aa0931ec3bf2deffbf0fe79,
                0x1f4a238b81b16a9caca2c25fdb02bcea8209912df23f15082e8ef023cb24a7a9,
                0x0da89c59207f232828c67e1a34618644be43e7c623f17271b31b6a2647f3c074,
                0x232997f3c6b1c65e8a43771a632cfba33ed678ab59f59b320567ff1703b3172b,
                0x0fdf61073d6f42516878ae8de35aae312b1680e1d2d1429a989e9357e6cd9d7c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs11(
                0x25e03b54562405263422cb31c1daa6b3922871e16fcd4cbead6b6b709c348b9c,
                0x117136f27c71d6d14c648845898e0e27e2803572bdb656925e2b7da12cd84a3b,
                0x11c3dbc0126568da6bfba36dcfda2cb35084fd86d6bfce966a68a5871e48e5c7,
                0x13329c5f3229f818ef98b0a1e8c3d2f3d576c06004a9737a1b1c92eac6e069bd,
                0x2acc49818e5ef4cb517b6f865b7cf9a733a4612173c8b531cbd298515a11288b,
                0x0fb2a7f00b30454aaa160bdfa5aae575ec83908685511f211a878ce33aed7bd0,
                0x2ceb172658b933aac2ad38e5893742f38cf6a9e21151ede1df1e070dbe237a8e,
                0x0fe10c63ef3f990b769a36221bf59d1c5ace2b3d1d3cd89d0cf516680b140ca0,
                0x049933abe4097208d973a5e7d9fb6d74c69e146aae85d2ea10230d9aaa7f3166,
                0x2e4f07bad02db14d25974b055e966125ef2df81bb0f89e72c78ebcbcb76d4a9c,
                0x1918cbe3173328ba5f9bd3aa1f28359fa43e9c12e96fea7c464522a5e7c3c028
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs11(
                0x2bba709db36aa07b867addabbe34088641dd1f3d4358f18c771f1ea2295e723c,
                0x035cf4773c313bcaded7324acf4ecab515d79ed996de938ff39507ab34f54e78,
                0x2e229b633a7e7c46047babf9ab19be4408d5fd5542c7b06966ac15bc13782808,
                0x1188df9113ee638b9eaeab3f8ad7681e0224396e915a094188bff3ea2d14c97d,
                0x2388cecf2e92204728c701299436757609cf8bde84d9a2a9e4d813c8d0ecda5e,
                0x263bde3ab6850101267dbb280b7890ccfbc25728d49c1b87d3c201bb1b2852aa,
                0x24878e056151c68b0042c1fecb95709f22fe11cda8b07d4077c8beb5653426b6,
                0x2ed1c66e1dfa8337f7074c9b4ca0d1e0102eac0b3fe34d4708461fd0ed7b98ff,
                0x1c64c721ace619a02decfe69f9c5fd96ae34281aebbaac1c370d3886b7fb96aa,
                0x1d4222602afa084a02cf2b6f56092c7f24f5f75945250be15d41eda759d42b59,
                0x195083691e1397850b6e4189f81e411db365a4c926c0140ae9ef7c8ac5171530
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs11(
                0x05d64117099ac765bb60727d9ed916162ef7555e7eae2aaecc19ac8a01f6ffa4,
                0x192d6a001f86412fe1531bb59172cca4a6a52e11ac18a932dd83d733b6b04b5a,
                0x29e24b9f40a84cf9a2b3c99987a06f6f6724b7a45d2ff7320d2e09f41f4187e7,
                0x007b4e4129c867236b81f82e4c7fe023114d34b8162683cb16d9f5638ad01827,
                0x1a958304a32d52c16c00186581a563245708c977a67646f371b160c5469dc6b3,
                0x1ffbd8b888a51f9f4581d1f4ba3a2e5f586870169a89b305368cfccae357bd75,
                0x2abb908ad926b3d261d917c4b81112a4d3f4344c65eb0360e60c2542449d87d9,
                0x026427efce3afb9c03ba7b78f6960ddb712c9f761556e416dc2516574ede7f2f,
                0x18359e07a17e0056fd6023489d8a2cde92e491f73c0eba56536aba8f2caad2ac,
                0x0645de2cb898db206110cd9647eddb9a06c676913991590dc0a791e989e6ec93,
                0x0fe6033db6865c010312410afaeb79d363b192d108004b0ae690a521b0a85657
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs11(
                0x14ce62d0c7b9df9c8ef641e7f6c31282e02554b1190308e31bd678b52576f0a0,
                0x02d1a10f66162efd823d4cb2100d4dbadd0d1f7898866bd78b6b89329c08dfca,
                0x2b3d1c3c0a8d22356730ffa1cd3caf68b91454c036e27cad6ad7c917043beb2d,
                0x1c3999796bba51fca5dfa3171bed70b176723f8df5b5f4944233c7344a10c4a3,
                0x0b3e0348f19009ca7cf826af14909ed4994c6bb1b081039e203663b7b0bd7e18,
                0x2d882e7fb1d85046cb33755eac59bb0b87d6e935f9255054fae7e4a0d1c5cecd,
                0x19094fa8f8f2d8641e550164cc57a0fa349f1891abfda8689edb9790658aea9a,
                0x1a73eb8822259c4af356d8ed902f96f08548fe50236f7fdbdb6902543ef2368a,
                0x28cc1ae1ef2387e562f96d186d2643f5b376903738a4d6d89cedf24fee18cc64,
                0x2f4d8bdfaa5caee57b430841e2d62067c5f2b04e75aa423e758cc62697ea4bc3,
                0x279342dc84433f9c1c36d8abc32677caa314fae2801eb6434df38831581b5561
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs11(
                0x0008111d895f065f5b1ec511915403df6306f11ba19563f3fba51ec9221e1f25,
                0x0b243306e921ef85058ba71251d7062cb6713b9d317a0ae66f7f0dcb54cbfac5,
                0x1489b3398e0e68c8e33506074d1e4e1e694a5fdb5a4135b0eb6cc277de2160b7,
                0x1b61289db8ecd6e3a340a000f69b18ebcd438bc2d588bb0b301bf66082f5ea49,
                0x046b5db0eb6ec570a0482338c3d93d30af5732d692b5ad551294e3e76aa0fe37,
                0x2bcac25ef2aabf00148ba68f6539c5ed900c2072eb99e6082aa098bd2bd7b4c1,
                0x1e45cf25dd358aa8c04bc8687a2394d337146fd940efc0149f6ac1e26cc14551,
                0x0fc8902c74f2f52df954792c3846545cf77b22381d133197870a2de56dd3326f,
                0x24232b54723d2821ada538c8664a840fce248ea5c956c1361d1cd6b2ec2c2d4d,
                0x2bc6a6e29cb1fe6088b9e108d559770feefb6922a8ab243391522aea76d57bd6,
                0x2407ad47f12687418e6274b9800fc24d91c1f9b99cf6774fdf413fa770832e13
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs11(
                0x0c19cac03811a27c45d7007dd1c48d097fe97ae2a10781881b79d5bd2752e503,
                0x2a0be4fd99f8c3cb685e4ad61afdc80c07471537a13d441b8e217b97799973f5,
                0x19cb36c594e0fd325db9cac55e5db85105adf029cad4f622fe5c29a1bccd993d,
                0x1ecdb09af7f554ef256ecd40051ab27c4a275c7e0e830df8e3db4c4db464d1e3,
                0x1be68de4dab60739199fc9819079a03692efbe44801faae9536be5b83fe3299a,
                0x0c93974b04cd401fd65e0f94a1fbe65bbb0f3152d3820b9373304a89d212a9e1,
                0x2c4aa5cb56a6dc9c14a32badc33803ff4d344b752ea07156a577aef725ad4368,
                0x26f02b6125c6d9dc302c00fa96256628f934ca67cd9906177bddbd205f122da8,
                0x13575626df5de0f78e606f9e8fd5efab3a1ba4979249e09b446e6ad4c7a9226e,
                0x0f42859b54766d62af614478898a487ee0934962d061e302b983aa41912a1cdf,
                0x1a351b039b2aea93752a4f2b83e701e4abb0ea124a4d07146598be05544e75f1
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs11(
                0x2e5f18872da96c7b780db51bcd8eb33967df42f436ed14075449a1330fb0f4ff,
                0x2cca40c36fb01e79b5ce126859fdd8e797e28f9175d9a3986eb3fc073617fe30,
                0x0d41c0d6bededf1d949986f989bdbc912b3b5de15951aa27340ef483fd38e7fd,
                0x18231d57424f182a5ee3efbc674f4c1e4704de3694648bab5e36acbe422b055a,
                0x2cc26710eefe4aff80542c4fca6d7626bf99331e6eee949522df4a7ac3e353ef,
                0x215246b9f9458d976dfb41ef9039076b0dc6e62bfc6546d10d2a5b0dbf509ac0,
                0x1c3a479f5a2f845745712b9203eb2eae6c4a8edf5b8d228a4bb4f598edea5a36,
                0x20f5724b4efedc429eb46b947e72cbe686b510564020581246b25fb78f488ec3,
                0x03dd7418e32aa4a7c7f558b31b30704af3327b8e39fc19d14dfb4a72d3cbc1e2,
                0x29175949fca21daeef52708ea889778ee7094ebfa348fe6dc8b242938a99b244,
                0x2657fd9b43ecce5ddfbb94afb38f085eba72fb3782d4059d59a47494ea7d5981
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs11(
                0x1a71b402537e7779cd4ac494e8547fb331a879e8c15a6524a801c985bec49863,
                0x29be8852887011009e393ddaa737baa0097a7d61818e7d9ef8f12d8dfb30c43b,
                0x02e3054a88cbc741f6882a76ff4b10abcf19590b5b07d446f2ab5a55b1b46af9,
                0x2ac2d35ccea5e32f3f715e8c8f7eabea58f9744eb7ae76587bfc4809f8721b75,
                0x0e145cbf729999f228f2f2979fac47c54a638c32f39988318b1330b1656a0a0e,
                0x29d435a6fd6a83b8231c5ba85bda0a9bc50e8eacdb9a89043e309e61e5511dd1,
                0x252d93c708e43f5835b87a54a4d1f683f48a61063d91261fedc2b83162b9a924,
                0x1c0918421f38e50da92d4ba23af748a43b7f243532e532720a98944deb4bfc10,
                0x21d6db182989986a473ae9131233aef40a9ae5b097828be4531494767e9f4e54,
                0x133f4aa796343278f113c95dcb7680ea93ecb649fc8f980bc75a3b0811012d8f,
                0x1d21e1486066e6eae1dcdedecdff2573a5a1c5f716074cb58aa2591d3d4aa578
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs11(
                0x2fa1425520e443fe611477fdaa6356ac5e2510839f375564d23529f0e11e6379,
                0x2842c9f0693f5bc71278914f4f7ce62be970cf5446d0da22b3afb7248fa0f16c,
                0x2d808ae0f99aac15218649f5093757c1f50ee76ffd9d45417d70456dfdc72b6e,
                0x187af6c2e004cca41b46ff423c4d3141244bdf8ea9cb769b7e4b7005b4852fd7,
                0x243cf808fc70601e6d6c707835ac0018c4db6b612fa5caffdfd54896e13e616c,
                0x104f5d9f510c82a939f15ad9af118ac3692fccf5b6fd3c845e4426edf3db3421,
                0x0e18a46101b30c6ae1553c4a5d33adb09e64b272804e9798bcba07b6abba74f5,
                0x1dc649e26b00090415818a2a3e5cbb366e0263577a3c9a659de64abb17c9b1d4,
                0x2b529c29fcbee0a537c46545ab09215c0cdd95ed79f0596f481626d4d653b79a,
                0x136a060b19bdc06939188423c0a9bb91151a80acc7911a7dd55dbaf2492014af,
                0x2448864f0f637e9d2ebc743427e0bb066a474c1f2778161c764ebf5666a7f58c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs11(
                0x239be6a5d7d0a4776760d79fff8a34dc53f3605b2a5ee2f2c9a83bbd03c8c4b8,
                0x1c43d2126f144240ed068436f57d90fd2a94aa6f4a84e8d54e010eee111f74c1,
                0x0d732326bdb35254b0318937849c36e85fe394e5fc85fcfb6482f7563da30fe4,
                0x0fdf32f31b90c60fd8c700c1d3e4a4d4e0bbc31f061b6f20c4c4e29e07b6e173,
                0x24ec2d93bf90c5358426129cc2051e3090734108e724d65838dfa8c4922407aa,
                0x0c0f480f14786e2263c819900f86f30c03dbaf8f5c53cc465517ca9163059c1a,
                0x09ab6129f397da1594d8d270d170c6abd14e243101f01201bfd6e8c44cbb08ab,
                0x0fbbd409cb5bf1743463460b8c141aa19f034300fe4ade91aa4513c3bbbbc293,
                0x1819d9d6c62aed0986b942f2cbf8746743b07c540eb20b15fd34432df146b87d,
                0x1e8af63e2a26ce10f6bac9b6c60a52e3e02fd679830fee2d65c66642ee63aa7a,
                0x2a9d80cce2e87a60f4113a7444dccb21ccab1dccc1b299703e7bbf74a19b1a53
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs11(
                0x17f83dfd5088d95cf81e7fa649b3cbd00767ec4e3acfa7712d561f3fa4fb0f96,
                0x0f6f10349bdc8610910669dd46b6d5dcbf16aab149a433504e97db01d69c5a85,
                0x049ea270cb4ac7cbe0df73ea73dcc8d570abfa5c7b9d08e45bda5b580f78a098,
                0x0cf62605cc3f79712ee78c80bcf7f468126b25b59e22cb93a9a730085afa257c,
                0x2a3f9cff4600670f79d71d3a35b2545a3a938337873d916388ed7f5b7ee94b5c,
                0x28ef641cf22c709c55e36b77c09c2d5e40d560663b385ab42c641a0ae4dfbb6b,
                0x00c63103711b26e1636547739839b0d54b5850bb0150c2c334e04a7fc029364b,
                0x12ed2236501110984f9d3987c962718e03dbbaef7246d04aa1368d5f7e9305fc,
                0x1474714f24c48199641b2f12d2ecb54b38f314ed1c8f9305599533352a7d11be,
                0x28a9c3276e4d60ccac598b59ed3da3d76f1b4ad6fd7f03539fcf48eae61c5ce9,
                0x278ccd7b2f7bcedc07ca395b3c997e7723ca9f69a805807d0c98868a5a54efc1
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs11(
                0x0c8ea581c2b4fdfc54d0c31331a0bd6adbeaca4e1179dc1004a612c0ab9fd5d0,
                0x17d76222a20e8ddf15ccea517ce2e1c8e1f1ac73b8cac2d2d86448bb9dd0ebbf,
                0x04f762fbf7a01d33e14e3f6ab25d6f8a234aabe0bc890c79269d41505e3c1b34,
                0x1c9dc00c5908b43dcb846532db8bd3eb1c5594f81d64bab79e3efd6f2eae76cf,
                0x01a275e82b26ff96fbdbc7fb1be48f1201413073123eb1d35cb15f35a048651a,
                0x0746ab58ffff132102896a1b752558339227356a8ead78506a83f8d8949a270c,
                0x17d499c0a5ecd1ecbc3a2efae9d9659edc25d9c3e79f0ec1db75c7dc0710a62f,
                0x23fd31704bd5b98869b33bd5ff2b28dcfdcef6b0be43c1c30fbf51e6bd682e98,
                0x2ba275dce5dd5c356c858d8ff3d4246b6d6eb194c3656140b891490663ef8572,
                0x10b43a8190bde2ba93451c75585915a91635ce64a4a1d245c890aad17d57929d,
                0x09b557eba61751328d66ee58eb6330c62d20d7c7122ae51cf4cda5e7da5c5c91
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs11(
                0x2b93e5a78d4527202008d454d83b9543a46114e47c80e36f74ec7dad74c99e13,
                0x19ba2e0b13de53ad1715c5b6cf58232f7699da951bf7e484a4c91ba2dedbfc41,
                0x03cab5e559e5d8ce91232bddb8499b229d6e92cb9ccf02e26e5a2cffb560ae7f,
                0x2ac3bc98702cb3923ca5396e5daead33611a129274898a1c6cc3734d5f326ab7,
                0x1839bfe907dc1c2d82f527344aff0ee9d55ee4ea21b1e3a8f74a0cec56a211bd,
                0x151825df4b2e29a678ffff301ffa2e594e1bb00c28bcfda986cea87ed1a04097,
                0x241eda67fa96a1a90f38d3aff8a5eee14ada0129ae08de4b299c27d276ab131b,
                0x0736f18b9f8f74d50f7807f966f56f9f1f486db85c1412992e6eafd05a22f7d4,
                0x00e6b1eb7a8814620ccab36ba99fa6808960f00d98639e3cb7507fad970bc70f,
                0x0e75076926cae9a4322c6e90c4cd6ef709e475f1b87095a6ea4838aa5be61021,
                0x08cf1917200d666c2fc7ab0761b27d6da5e58b71cf10e5add6a1ce6a5d73c50e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs11(
                0x17e19cbe5de34e44543c3e6ffb12e22ec0578b494338e961a84154229ca463bc,
                0x3044f805adee262e1fe4f11c72441bbe143f517a47dde8573684091dcbec5771,
                0x07b7de2474b1471627a841c97a44ce1a26cd3cfc5897fa7457357e76788996dc,
                0x25784667b12841f685dbb725dd3e6c5e5ee360745996f93aa3625aed31acd533,
                0x15ebc314ed0d95403cf79d215456f25fbe4dfd5bde5402bcce1bec8debeedf80,
                0x02cd97440bf1fce19e72db76f3fc9d2aabcac7663c19284cb8b6ad56961fc8fb,
                0x13926d9dfba4f2972a182839cb7ed2fbdd586035fa574629bdfae6af3988f0bf,
                0x206c9f97e5ed9de34e1a965c3a1558be2cef10d36f6d6f1442956eb8c506525d,
                0x02401d60f5f382adb094f58ec82a033fc9231e249cacb686c27f05916fbb38c5,
                0x1e70fad4d53e992e6f922550b2c83c97dfbd23540ece6ba3a1a9a2b4d3bd65d4,
                0x117a3324aa0ccaba4f74fa07f5c870736999b76fefc4b1e5c875a3e4c5c7b3ad
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs11(
                0x0e46b60551917e86bf09f87864324881329f875a4b886c94e1910300098a99a1,
                0x0915d9518b955c329b0598b430f97c2763be9751d532eaf4ee6b65c97faf6c8a,
                0x1c1ab8b3f7b097fbdbc9d52c8a7e3031684ccf0b9736207cf5a1aa3356ea57b1,
                0x03f48c507554ef3be053c19e9e5cae5065ecebcc950ada67ce36fabfa1c878cf,
                0x0beee5d1407460b307b70c8284ff89c30e4708c0d9d07a5fed80fab79652f7d7,
                0x227bb85dd11826aed1da731cff328ce53be9f2939ce6c383149308e30d253d4a,
                0x062fc934ce7d414d1891ef3c9a663608e97c9496efef45360075ab0a487d9ec3,
                0x22b8addbb109563b01c8542e73da4f1aac0ef0b52d6f86f21a1ae91aa413c88b,
                0x01c6d826cf4b2b50fcaa59a159ac66a4fe7d4d10b155652d1f653b2f6bf258a1,
                0x0adca03a0440307033d48883132be17f9a9fb9588cef570c88ee6ee8fcabedb7,
                0x14c2e26dd5b45f4ccc8599d9618e7a90dfc482042cea7b1872deed0f3878cefe
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs11(
                0x1a5ff5d53da88a230fd8eaa34db4a7f7db01b3e620d78008f4252bf30cc5d9b0,
                0x2c175ea51f7cafd207e4c2037d436f852188615b90de0d4d22d54b227f9a8d39,
                0x10b45ab24c45f746fe4d72d349ef202bb6432d0e9acff6628e91ed3ea4bc375a,
                0x2a234cc1e1d919c9b9d53359d9d51e69bf1c157c345e9642e38a2db69b090c7c,
                0x16dd44d48ffe2ef6f80443baa169a84cff0730302b97e40c397c9e131b7b068f,
                0x28de3ccbc6b131ce155784fe5340e8f4b8979bfbc7718ab6ea06fbb8ce4de30d,
                0x1d655ddbb0b9fcc335b85e4aad6bd811c580944035317e7e801ac04888b7ca9a,
                0x11bd59680c9126bc9d598860bdbbd77090239d4871be47d6956a2e94626b8df1,
                0x1804bac389c8ba5124d2e7943063dc7801233c799e36cc4cf2bac64112a92fa2,
                0x1e3696b9a7c6daa9ae114fd168df713b657354b2d2ce5699c898a54b04b10322,
                0x05cf36206863c09b4f18669a0babceaa79f988c0c94501aecaafb72615d75632
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 63
        ark(
            i,
            q,
            HashInputs11(
                0x2f6a2cd8b59d2095dc0f5a63236270cb194dca1126d268ed091f28809341db16,
                0x04d78e436ff95749fe6a222a435dd0dd01b9abbdc6fcc719c0f38a1fe97a7a19,
                0x042649cf606a2bc89c2011f80d4ca914714caedba7bc59d8103c49c5fff1def1,
                0x2e93bff5bf8690fb07dc2ff1021f680d0b40db214350a2d1d9d054d7e2570a8b,
                0x0a3030240778e01994edd6adb6fe708cb9e212025054eefc373f2edf55666f9f,
                0x29459d0ac976c248f20eae4070b125fe46b67fef1588a6a78c00131627c2fa84,
                0x17bd4370aad73052cbdea451decafe42d2bf6526eb69d2e52e3bf607f800afda,
                0x22e5f112e2b42e12f49d006a54616ce33b4eab1e4578cbf60266ed6a49b72fe4,
                0x27f192cd1430de62080626c55fd2d7fa13ac98b62676684912addd62f7da3a42,
                0x15000715ffe54c3cfd15805f840b9b39d3f833262a21796e9cf9eb57290e394c,
                0x1fbdbaf0235fd98a44515c6e4482a04bb612010c704c4592ae6c95828f60e971
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 64
        ark(
            i,
            q,
            HashInputs11(
                0x14d969557ee609654bcbedc1977c764a84a822ecfe7be029b8699dc65d0369d9,
                0x0fe653278aa4354ae55115c28ac51c01215e52f595cc92efdd778f0b218acec9,
                0x1a64f192e003dfe8ee0182eadec1f52bc6e0131571dc38f5d24a8dd74deb0d90,
                0x172ce634e0f31c46150f99f936732e3dc534742f77edfa36fe8a93dc3fbfdc9b,
                0x0cc9892074089beff6deaa6d3147087cee091ade3250a4b24344ffed9251616b,
                0x3048f42d4765e823eff213dfc082844034cfa427c393855c3c3a3520b42bb2a3,
                0x2075dfab8a65dffc9b1de176992374c56b3a591117e74c3ff420f010aff18005,
                0x2fc79a0bc085dec43ce97f7d92739dd06e11b413a1b797c2e0db8a2b627aa42e,
                0x3063aeb6e323afefe5d107bda9605ea8e4d66c0bae7a42deef14c46348e8c827,
                0x2f435ff6f2578f6884a85960ab970df273f7c5388259e6d7ade2b0de0a2ddaa8,
                0x1799140e1189630a09d5970f815594ef5d273c87720f759203a70cb3b55e5081
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
