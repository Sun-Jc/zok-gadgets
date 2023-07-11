pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU5bn256 {
    struct HashInputs6 {
        uint t0;
        uint t1;
        uint t2;
        uint t3;
        uint t4;
        uint t5;
    }

    function mix(HashInputs6 memory i, uint q) internal pure {
        HashInputs6 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x285396b510feb022c442e4c2c1411ef84c2b4191bac53323b891a1fb48000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x06e9c21069503b73ac9dc0d0edede80d4ee2d80a5a8834a709b290cbfdb6db6e,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x2a57c4a4850b6c2481463cffb1512d51832d6b3f6a82427f1b65b6e172000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t3,
                0x2b03d3f456650025159cafbeac013219ead8ce794fc1479d91ac688380000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t4,
                0x21dfd0839da2bcea0104fd995aa7577468f122992201cecc15eaf8b45b333334,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t5,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x06e9c21069503b73ac9dc0d0edede80d4ee2d80a5a8834a709b290cbfdb6db6e,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x2a57c4a4850b6c2481463cffb1512d51832d6b3f6a82427f1b65b6e172000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0x2b03d3f456650025159cafbeac013219ead8ce794fc1479d91ac688380000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t3,
                0x21dfd0839da2bcea0104fd995aa7577468f122992201cecc15eaf8b45b333334,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t4,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t5,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x2a57c4a4850b6c2481463cffb1512d51832d6b3f6a82427f1b65b6e172000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0x2b03d3f456650025159cafbeac013219ead8ce794fc1479d91ac688380000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0x21dfd0839da2bcea0104fd995aa7577468f122992201cecc15eaf8b45b333334,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t3,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t4,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t5,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );

        o.t3 = 0;
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t0,
                0x2b03d3f456650025159cafbeac013219ead8ce794fc1479d91ac688380000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t1,
                0x21dfd0839da2bcea0104fd995aa7577468f122992201cecc15eaf8b45b333334,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t2,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t3,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t4,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t5,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );

        o.t4 = 0;
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t0,
                0x21dfd0839da2bcea0104fd995aa7577468f122992201cecc15eaf8b45b333334,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t1,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t2,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t3,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t4,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );
        o.t4 = addmod(
            o.t4,
            mulmod(
                i.t5,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );

        o.t5 = 0;
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t0,
                0x1198d6b56929518388d75f2b17d1f1963d2a25ebcf2c28ef01697092e2e8ba2f,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t1,
                0x2c5bf293f91828263e49953ca1613baaba2f94ed1a3f51da7e39cbc79c000001,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t2,
                0x2cab5c1b46066c7547ac8f1e9eed8ca4c2a6117dfa350572660ba79c40000001,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t3,
                0x0374e10834a81db9d64ee06876f6f406a7716c052d441a5384d94865fedb6db7,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t4,
                0x0673c631735bf338c33de7296699c783e33a1ef898c36457a2a6a946eccccccd,
                q
            ),
            q
        );
        o.t5 = addmod(
            o.t5,
            mulmod(
                i.t5,
                0x2d5e098bb31e86271ccb415b196942d755b0a9c3f21dd9882fa3d63ab1000001,
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
    }

    function ark(
        HashInputs6 memory i,
        uint q,
        HashInputs6 memory c
    ) internal pure {
        HashInputs6 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);
        o.t3 = addmod(i.t3, c.t3, q);
        o.t4 = addmod(i.t4, c.t4, q);
        o.t5 = addmod(i.t5, c.t5, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
    }

    function sbox_full(HashInputs6 memory i, uint q) internal pure {
        HashInputs6 memory o;

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

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
        i.t4 = o.t4;
        i.t5 = o.t5;
    }

    function sbox_partial(HashInputs6 memory i, uint q) internal pure {
        HashInputs6 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs6 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");
        require(i.t3 < q, "INVALID_INPUT");
        require(i.t4 < q, "INVALID_INPUT");
        require(i.t5 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs6(
                0x0406ae74125149509072c5dd90b31bdb98a449b40fe6d58c80a1e9bcc42294c3,
                0x2c34f0b088d46a94e6d521c5709e6691b0b75544c0045c866f6a36df2c2f24d2,
                0x0f18c58c521b667cdb74bdc18501c1684ca9c876d8a9a77fcd8ef71d01ae6304,
                0x0067135d0f7206805649ce18e32fa449ea799f660dea0c2d932c3fef2ace6526,
                0x1d26b1eb74d2f73cd62c130862d588a898a3d7e50583c1dd77d5b6c4a32520d0,
                0x136727939d262bb055d3827b37c9a11fd37baafa53e58466e3b3339556f02689
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs6(
                0x222aa0cb9228b0472c8364ba7ea518fa7bc341960ab7ff5ec6303db620e6ce08,
                0x0e779f6132559d4f7ae2afb42b2894ce2954627fd66c409b03061c2515b85375,
                0x2885689390a50221ee91913bbd39797fa00ad66a8eb4e4b21a0af277626acfdc,
                0x003c9bd05d90ac52ffad33f876dd1e2d540b109fad0859e8a49ae2a48479ade2,
                0x1f79372c43d2ad146e20bb7c249a03f31c538f545d48df81056bd2bedeec9bb3,
                0x1914fc41688e627b09858685d417e7899185d0d871e31ab97813277df2c26ec2
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs6(
                0x223a75b18d16a3786d7d8a0a3caa5e6fceb3c64f309ff6a8b95b8acc36218cf7,
                0x1ba0d0022b963d125f8ff95ac2b3ef87eb3205ce2337ad6c5e07d0c66d3c127b,
                0x252f21908773e5ef71ed80cc9558a691d0da25bd30f7ee05aa432c4efda3c349,
                0x21fe8bd414359042e2975b31f005a9af416e6eaddbe8d71f8828e6104f6ec5c3,
                0x0721adb49c775ec1a19f40b6ce00f938cc1c20331d8c90961db57a8d393dfeed,
                0x25a278d1f892bfd8dae9e4e72bc99e18121c3e74fa5eb70b66b185948902ac79
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs6(
                0x0724cbdccb3689234300c4a05849370e12275b9e88affdc333c287ad9369e6c1,
                0x2916fc614c97e9d09bcfb146501e2d4b806754dcec5cabe2e190c30296ef2345,
                0x197da1a15edca8b8885cfe72c80f323294c2cd0883ce4ddae861cdb75208637f,
                0x1310ae9499a3de0cb04c5280d6c00af7bf0f644c8c5c2625c37171518fe5f114,
                0x1fb42ba6e2f05649f44f505c9b0fdc4520738f72538dfa2beffe5f3ceee785bc,
                0x2a1519ef20159f8a3f1676b828518d134d6901d4535ff7cb5c94b2884962f6c3
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs6(
                0x00a91b36007dba204ee3541186f0ef309e02ef9abb730284710ff3a68c2aabec,
                0x2208ee13841267a08c77cf7407a97e088afd887276625d89cef2988d44814d1e,
                0x04adfff2214c8ae6167938d238f47b3ec24fa6958161523106e9690f0f1403e6,
                0x1ce3e6eb69c95d030fc462d4605c0743fb597ae4d47bf58916d295e68f2fb128,
                0x0dabf8049550ff923e6bf26eeb50b296bb68ee54da3c4c6e9d29fe5827fb5a62,
                0x202083a858eb3f450c03181980c0f25d41e0bdbb075a79e055e387274e4d57d7
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs6(
                0x0fa88406690301ec2341b26d945fefee7b6197502ba9a11ad48872faa59c648b,
                0x1d72b5cd28db12bb55c32f2e7996582100b92b07854bc50020ef34823d6e5987,
                0x20ca2b8c443ceccb7d4a0f1d42e80bd88b168afa16e2042e3a5460d760852b5a,
                0x26dee25cefb38192e16d1a778b77a7f89fe40c34563b6a6a95de61ed15aabd2b,
                0x01129f49b1adbb2f5c1dc6a592f0cdf954b5b812714ba29a198b29dd38d84f77,
                0x06359b0cace0ae35246ce4ef62a987d7fc37e1dadef660355be9c37015e907f3
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs6(
                0x19ada8e643161fd5aa8d0bb550f70e6352cca8e707ae55ddc70a9b33e8cdb242,
                0x0438627ca33d3b00d5197bf6a77c95ecd3730af6c88d2b9d9959bb85dd1afc5c,
                0x13d16b69b1b255597ae0bf9662b40609d8acb1acb90ea11185f6fb865fc6b7d2,
                0x0677274ab35de6758aa052b02e0cf8a2e32147a97d1574e38c170bbe9d48133c,
                0x0303548138d6915fdff38de7f3bad5843e521afc979fb27d6c842ceceb8c76ca,
                0x1a0eccbafaa5bafbcd7740f31c5c5306752413f7e35f86d772f1eaa92e7c3796
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs6(
                0x28fb27ef1ec65740a7d7ab9651a7a7a33cd9080585744fa763ce791dd9a82ecc,
                0x096c591bcc307f72c47f3caca5aafa8d94940f8ace2702f2860e62fd2e12ec53,
                0x00f0ca71a3a47c0bf0357659c59a3538417aea608eea324ac535d5f27597a28d,
                0x02f97b30fa2a9e2fa58081b75ee128bcc0dce7c5df73b16c0057975d268b9822,
                0x0a2468a44c72c6001258595b732e3ddd510f13bc6bed820818c23c863103ad8b,
                0x266ca13ac0ecca476ce36cfee6d8fcb56e14de038983bff7385627c13981f43d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs6(
                0x22cae59ce071b2593154e66794087b952109f9806b33f49d04cbda1e5bd8e8bb,
                0x0f537a1aa8735f3b5a3a812db3e83000d80d6486de65279702a87d63c073a4d8,
                0x03748e62311c9bba6df1a255393e76126950ed41adabd05d86013208c8d43a0c,
                0x0322784c33b264c61619dff976fb5be9ea80ea2a634513ec3f1353749ec62f38,
                0x065a0f55efc80d53901a47318c2d3c1c9e1141e8911a2cca91d918228f56b054,
                0x21d989e1630a267839e8fbfd1ade2bf00fe2fd66f2843b668a3ad745140ced40
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs6(
                0x3011457b84ca3d27a2e44342d97495872a2d03fc99dbd00f259bc90794554fe9,
                0x1e47af9a3f6e394c79c32dc871946cbef6046623220e938ce8232f6ca036867b,
                0x035d0c7bc1598b286255797b46865598483913967cf7bb62292d540b5dd2628b,
                0x0d33234c7656e48dbf669ad0e63bb5879abdb234dc4a4499433e807393e11f50,
                0x192eeefa2531b6374e4d70d73aba4c882d9303a38ebf13f994537a9ec00131e4,
                0x1ad91e3bb2ff152f0412965161af7abe7b7ec61c74a3cab6d29e23d3ef29f563
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs6(
                0x274bfeef0414dd560f917bc13ecf3767a4dd89eb59ab65088e716560b2c8bbfc,
                0x2154ccc5ea1e73adcd7235e0d1551e05c65179480fbef3187acc281fe7ce3d03,
                0x0abf7ec83b5d166deb04a4ff452cb2d4849ce25cdd9e658773e6dce14214a1a0,
                0x13ce8166bc96fc023204a3cf858aa1dd85adb303d07316a35c3a2bdd231dfbda,
                0x256ccee1f279c2b5ef77875290ac939caaeda2892dd1e93bf69d207088d6ff13,
                0x29da4fe1a9c98e0a342df7d7c39acb0e46c210ce5786f58b19dfc82f08e15281
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs6(
                0x17c23c75df128ed79d25fa7f7938ae8a53acf880a3cdc8f4020bb8b06090b837,
                0x1fbadca940e7ccaa4e34d9c665ad3bf77792a0ab08f59e8f6da6c7705db5bc8c,
                0x241eb168bbb4cde661ca26ff46ce416c7feeeacb9a9c3f0d0a8afeedec678c7d,
                0x09b477ae692d53894e592d012841c61323fe3fe27bf714fa2530ebb75520b22f,
                0x2f741665b1f89540c9c27e4d4657e0c6d826e628da04d46ce30346c1fbcbe034,
                0x20de92178b15318563684b4189d6277a92d9477b600b808a2d8073a62ae23615
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs6(
                0x15d58263dff02ac0fc7031d469fcc8caeb0abab308011eacd24383766f4e8557,
                0x2edeb434d73175e1ce7a63deaa155acdcf45f4860c11f25349848744131bfee9,
                0x2ee4e410e476a1726d38997258fb6935d2e19b09d13eefb3c121ab25e40abe26,
                0x14f52f96c24ea82bf4790e584665fabf5ca26900d1e77ab75757be5c1a1f016e,
                0x25f35f053be6d1e0a14adddadd6df92f5b08c3c1da3c2e81322bf4dab532aedf,
                0x0329970da89818d810c0d7e27006469ae416f31289982a3a36c83ba423baa83c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs6(
                0x1c4f2bfb82cf113aa2d45d239ca3d02fb46ff1538f5ae3063aa79be934603c9f,
                0x2cb8685ecd28fed5eda414767483ec457ea0eea38856b410ee4619b8d6bb6eff,
                0x2c57bdf1ae649fdfec012cf619b6822ad5a28a3a149452fbdd70b2e0ff166d1b,
                0x249cf6f0d1831b59bb941046ed5dd2742a1eaacf74c8cad7b1a8c12e97464719,
                0x02d241a8addac8f56fe06f778d00b551aa244aea89d43ec5676ad63f30682ce3,
                0x11503e2af60e86a4d1755748da48ddba6bef1c4a28ac6b382a283fbce9782c00
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs6(
                0x26b38c4266f0fe22a4a73582032634d83e0c39d92ea98b8a27ecfbcf2be0569f,
                0x23a77543fa1bd43d8f82e0ff7d17ecf43589189a07d4a99271ce9613c084246d,
                0x2cd66332c8cc69085fd12641f4aed67e814568b03c35ee601160e7b946147329,
                0x174ce4dd4a25f41d11de1075567002d0ddde8604bac9540e1a788aaafb4e8f1e,
                0x25f8b1c5e8145d680e9d246b77d66946ea260395780602dcfc06384c685d5f02,
                0x109ca259174277f4300239f684e4fca5828ffffc375817b8eb591219badb50a3
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs6(
                0x2cb85112be51365e0a9abe1843353ffa02db08191c20bf37f759dfe09a3dc93c,
                0x190533eb3016c8c003303bdb3e0850c8cd90e1d7d477736bcbb11b159aaeb765,
                0x22486323483fad1f4c60ac9d7036e1038d9be1df93df0eb4521cf7b5b07f2c88,
                0x275f720936190ecbf694fb2c87c34eed1651302be7ceb1467df76480f962204c,
                0x07886e566915178411f38797631481bf8766f817d1a977aa1a7d1056da014fab,
                0x191f020df43b035c1efd0f35b92e6591712f215a087680dde8b20424bcd273d9
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs6(
                0x1a8229ed4e583fcb0c41d6b940a72ba9f3f6bca140eaa6afe89f500b396fdb50,
                0x2da4c2a2372ea43439ccb1601215fd7cbe487bb0c9daa7587c3e5d72ecdf9298,
                0x2724b92d2ddc3d378009600e1c0d4a69bc18a1ef3a5a086cc75255448080c7e2,
                0x2e227bdf208f9661e16fc7a699b8aa6bd2707915c45f814f625f5b36f9ca9c6d,
                0x28c3d87fe5536c60d7ca4cdf16f1df6e2def049a14bdc184174f25cdb35edaca,
                0x25afd26da27cc002e4cbcf9b76660ff0aeeddf36d07efcb287c6f47c50f74155
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs6(
                0x08a63fb4d0d9c908ca2892197ebfb5ff45a476f5afc0bd633a04c233b4491d9f,
                0x292c7cfc1addfdbf08aa62445b694485dfa8dcdec8f1e581159918c1b9de906f,
                0x18b7b729f56297c6298206a82f4859966c793bfca5ccfedc17ddd5e33d4929f4,
                0x2f0af9e8fe2242e009a45cb0823bc1e7c0b6c5b86ac6b55bc672da309f71c26f,
                0x21ac6f9ac94a674015dec7cfce68d61dbe996664906a9ddd9564fe56d0449e9a,
                0x1ddbab9a8e575fe7fe0da955d81f4604602070d3b1ed17cbc3d203b378d6842b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs6(
                0x16c89020d5c320c3abf6ba6ef197a06ba2d9f24e72ea516aebd99e54747d3c94,
                0x2590e37a6a5e3675019d988446aaa2d7f647fdbc26402561b115290d6d2505e0,
                0x1ee4bbd6628b25f7f469f7a23434e713d50d2bf27b2e756ffd1a24b2789b50c4,
                0x0f354f1ea6a6d6c95bea27af2eb011d64b5e3955d2d1d4131a1d5f40cdd6a716,
                0x28f5cb1e1a9b24fe641624617f9929313a0d6b3763d5d4265b7add1ccd03a037,
                0x0f58dd8126e4ffd25c05c585e60a24881888184336ae625a0fedae25a7e80372
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs6(
                0x1557418ed20755d6f7765d91c9743dd68712b2e949c27e3d0d681d741613da17,
                0x2faf2f37ddd909eec47e69c7ca5b472ed5a9e2832b9945465b0567807c89a8be,
                0x107ebbbb1de15b5922bde868305a1010a2c9c026ec50ccb6b61200e287c6860f,
                0x0eeb50fe7c0e96c9745d09050a7f7128d5d4ca90291acc3dc93e4615b76f7c0d,
                0x142acf151ec8f1a29ad057ef1bb0189b3c3d7d3638ca0d5fb341b7b0391fdc35,
                0x302aba20c120f7c742893a6bcfb1c22d26179aa97b8db264be2869dc1c87f5fd
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs6(
                0x29b3b162b14027687cb6bfb09e48c83645d01780776d2b3be4f537f291ea9557,
                0x1f5eba170f0fbe00a3f90ec8409af3a3af12eca78ea1deb33c7c043542035007,
                0x1e222a720e8ec7922ad4e103107e7dbd0303d06ce65f320b9f4c5b8b61ef430e,
                0x0394713c05ed971e0a749c826d9b99baafc080bf361b67c3bbbcbb9d90278618,
                0x0d8e965c98e4571cf9653956fa2f4a37a5a808268723baf3890502ac83ca4950,
                0x0082e570746314f8f3d57cfb4b776e13862663a9b86cda15a1f3b3641fa9316c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs6(
                0x176216ab0e04017064f068dd12a8256c0576a43fcccbfc7010489479ea763c23,
                0x08100375adfb6a8e1a4b5a59ac2bf7eb0d01087aaf9a4b1084bf4efec1670444,
                0x03569e4a6473c08d6c85a08fa44a41bdd8114ae781aeae76eb103cb320bc68ab,
                0x253bbe355c67fddd4e70ed1f98850bc6870204eaccfbbcf38ec66686f0f03f18,
                0x105b81db6a40101163846d56e4c12444303f494c8768840aace84c76e873b9e0,
                0x02221fa4848376cfac5c3b365300f5c5e8b0e6ab60b5ded9826305c31c8aacf0
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs6(
                0x277a439fff0cfea338cad86513775fd2fd1716288a0bfe8edfa2ef6407ae7766,
                0x250fdcd64d3a17097ca2ac6866e4e6ffcb57e994e244264d9ff468dba1715021,
                0x15936657b4f9fc4b5b44378520bfe469fca26ff528f2aad06735fd4a0c6ae964,
                0x07b134b2d5e27c0f183be634c7c84b9b8d29c7355a26e5209d581fc26b852882,
                0x2d42c9218825f7ba6a42acb556d7084a90535de614b771f4bb2f3726a12ffe1d,
                0x147d43d1adce7dd6b21941efb243e7f4346c197f93e4a1c667b791dd13113586
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs6(
                0x0b48929b9dd62a345d060c18756ba8339bc0ad3c37e3fe5522a646e7f0b5d730,
                0x0f6d9e071de50bd19ddabc6f9d5641664a2e3397d0db0ef8e38bf75f78794851,
                0x2cc700dec530a29d6fdc4714ceb209af04853e83c357af95530771a4ebbcb3d7,
                0x1f9c7b57a5319492c812ae121ea84ca027ffa87d78829d4911f7ba50654813f5,
                0x1d37a745c886ea5cc0ec9d201af98946f083128b0af0e6484e3104e718753e20,
                0x03898dcaa4cda94f06113434dda25ff45fc29459ded64bd561347f6ab71290b9
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs6(
                0x210dfa20928c1820c38d535b7ed2d0ae5cfd661c47689181c1f3ffac14befb77,
                0x18d8cb70173695cd95b774f7542eb9bfe85b7bb5f87cefdac591cbc7f7f61f40,
                0x1559b80991d302a6c1f2922402a81fa5db982cf1a1f460e2cb1c6ba0f00cebc1,
                0x03ea9e5f8fce7e77def126a678463000a8695a8cffc72ea4d1c93b89daf38e80,
                0x0923f3bbd7902aa44306da7686091137bc19e94945f54bad835d5748181f8d0e,
                0x296e087189158481ea841de960527c49e9b52620cc5191e413ab5be8416dcd77
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs6(
                0x2fdb9d72be86c4bd71ac0975c76a5c6ce17b3717b96d7c7d7e8e70b9e4ccc70f,
                0x2b0dece89628ba1be0df56cff7908eed3aab12accbbae9d0d98f386c6315f089,
                0x0307c70a414f6af87e91a2d846f4f66b6cb37cf91c8014a4ae1395a2a3c02dcb,
                0x2d22894741176ad5d6bcd9b5303178fb429c41860da859330e80e0adb352327c,
                0x19d57b74da8c6bea6b4c2b27df77ad293b0018e07a2a6362468d3da63db9db39,
                0x06cc64fbb8a3e0164e01f04ee701803da6e286dd85712fb9a839237cf3fa78ed
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs6(
                0x18ffde63610d07b564258eaa070e9cdee226486bc5c74cfd6b90447b74cf78e6,
                0x025983b1b5637c878cc604a27fe120c18bf8ab52aae20e540a4898e9257d3c33,
                0x05a8c92694388344133e1d0826ada8f387c8676d3009e938fce07e3ec7d7d294,
                0x2274b894c0a51f9c1644dd41e57cdd2bb033a9fc540e3acff501aa09856325b6,
                0x21f449107f3910c8a31253820b9d26148146d5dbba09b48e2ea7b29230d42206,
                0x069e713ca399eb9fed9891d8d3e95bdd2f4d1466ea28ebdb4a2eac90c4100712
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs6(
                0x0db817c191b45ead0fafa540d5bd68707a284ffb8653384781e9ac68be5f0f35,
                0x0315394c278e83b437a52e347f0765c2bd21be998615a44a0157d2d9609b5f67,
                0x04aca1542e109a951d7da3b3226125a7a726e7ee1ea5b79cde21a471586d9f79,
                0x09deebd81c4531e283f209b6fba30a281044d3cd6b0b9db172e41ffd4640c521,
                0x12c55b1bdac65a1baddc9fbd7d7fa2a6dabb058283fe9a47a483c82e47fcdac8,
                0x2744956499e2cf6af38e68b3de599cfa411f3fe4b2883e63be896b133ceaef34
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs6(
                0x19fd4e93fbeb76f5cfa48bec08f265452d7c2eeee98e7d75a671d4d865a66999,
                0x110c8980591f86bbffbf3d42b7e5a8939716c0fbf5d49444047215868fb541fd,
                0x0427e0927a9c14642546cb467a803b88446d29c00e28b39dda776e0d6b0c701f,
                0x1d7e338b4c061598f640d32ab5d08d8bb31e4bc6ed5845fd10c6f27dc0a88997,
                0x10c2b28c02f8af32b9b3f6db1d47c60b6f1c777898732c08dba956b084d51d6a,
                0x0b72b88ea7b166839385d0f3c6712f4449814648a59e29cabaf583ad1811fd61
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs6(
                0x0ae64caf1e93cc866a0adc2fbf1886e6fc5bb87f7483ee95ec488e7e13d176d1,
                0x13d8173efb06e423b4e152eeb8a5aa84cbec6b65aa8a33638d986c86d535b815,
                0x0191aaf09b2818227a2dd9f6932e8f8fd6a0f95e5d1f24609129e06c27694655,
                0x01ec6f69067c913dafa8175865643ff470c4c5dfdbf58ad742bafbc4e9e078bb,
                0x19d3a6d2f232c3f5f36aac184cdbbdc998fb300a91a6ba1da84c61bf44160de4,
                0x149eb5d4152d171dbfd6386279c93e0189ac8896b8d4af3a25bf8db2f5e08219
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs6(
                0x17bee49e5281b461c5f322a841582bfba64d9f838d2dfcf1b258d07a86ccbaa0,
                0x07b8f53a8eb208bd9b4398c0ad59043579c2d1be7c75f0a0a21daca7f35ac0b5,
                0x22741be753bdd1a68ff2e04a7dba5c78773379ec9a1c62937cfe17eaf5a70869,
                0x05184b0ca52461c07cfa2f3e6fe8a8a17a0b53599b39c59d380dd158ebfed3bf,
                0x1c8f4d084472055359aab32dd7e47bf0dcf367765630886e103e45aeebcef929,
                0x245a41ec2cbf5babbf342c59e54fd8f645b9e3a93bdc11e8d585363bfae87fba
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs6(
                0x1bbcfa0ee93a3fe367c748f1f496c1793418686dabcbf3db78648d3d84d11218,
                0x1ecde8a014ad4d552e2aefde432cc21d180bcf03bf302f11e9d0a959db5b428a,
                0x1200a5c56c72579049e582b778058944c4bfd7fbce43ac6b956cb99b7ebbc464,
                0x1ce2f494ef015855b9a240b4c6cc819985ea0775a0b68c7a0d42d27ce096a17c,
                0x0d0f5a47bbfb3c751499506eb36b84be31adf4a3afd2fdc5f082a8cda45d39ef,
                0x02c282f0758a38ee5ff1c05ae748bcd95ecbf76c33629778904d42f33c3c6ebe
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs6(
                0x07bfd00ae355045d3e42855581ff24c318e0a58ab539821c1c4ba4c55bfe85e7,
                0x1960fa3ac35245c7879a9371340b2c561abd17fe2b39df17ef43308eaec09d60,
                0x02b0d5c8b09444e85bde19c11550fcae9de6a91b7029b7162e02d7efa6139e6d,
                0x030ec4cf35ce02a19607d8021ddc3fe63e64723bce59e8004a602bae3dbea0c0,
                0x018e22fee22ac4af7de6f145ae9c16fe6416a1ee553b9e3a50413ff06e7195a4,
                0x13a2b39f43d394ece89446e87ca9694d18764e183b24dffbea60b648f4cc512b
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs6(
                0x0b38b4a9212784c1d5f4c02634bd69f311a97ca29388a9fbf95fc9093ad24a5c,
                0x163feadaabc5e16d5a7a1cb148637d15482ce8957bf6d305556c9ac070094e71,
                0x2d74f9045ca9bff2a78eb651648303c15ded229cfeba64a1f96232cc45435eb7,
                0x06b823a3c5ff26d707cdbf46b42ce33a86a6ddeea67440a3cd47a4ddbcc7f631,
                0x014eb40b3c0b90d918b4c8ca452648f6067f952746271efa2bca086673321b58,
                0x01deefccf336b4b0cfa8d8bd3484335457e2ef5ce47f204f6bf21d761103c5a8
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs6(
                0x027cf7df42ad95aae08e64a3e2f45f4197c742d3c18b9dd0df6b86509168513e,
                0x05ff9cb978bd49b546c638a8065a6353d9e8217eb4bf7f269f1fb239ee51ab83,
                0x26349540a3b70f7ba35fc10a1e5fdda6f13a68ec003e33d29cf86f29aebff147,
                0x1d018d98673d77d6efebc20594de93ec418da20a215a29179c8ce71d65d42bcd,
                0x0691bc47c952e80c8ed847d1bbec745368254e163c8c616134a87ff7f13c15c9,
                0x243e6cceedf0cf0e46d06e95292c0c9d45ae729aeec88c35f7b0bb3c3808f3c8
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs6(
                0x0aa3cab545f387271c761c4f9e9230d4702870294423294a6d367fd34c887667,
                0x160f8ebd89d38535f6e0b449d75d38c851be9f6d23f96eefcf7162bf102debc3,
                0x0aad5fca12b2358303dd209d9d0e4fa45683fb89ad343dbf6f1920bdd8273dfc,
                0x268ea61900725d8c4d1ad3faa94bb86080fa0bd1283fd04d0e3e10eedf0b05c8,
                0x0856c4a7b449f60e8f01f458d4a911c0e6a39deb3460b0f6554e38c9dd8dac64,
                0x07a3f54dddf0b06273d05d32f5e4d757bb51acbe384af9a2df2f14247a79b2e1
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs6(
                0x1b35bf8572be8f645c9116f5698dc6261def60aeef167373fcc14e9d49d8b8a6,
                0x163e80a999378c50d299ec5d44742183fa80dada16e493cc1188870d2f94926a,
                0x1074654f065a738b344006aae9b5df29f14eb44de0ea76939a20707587fe92ab,
                0x1c7c7ee7a42b5c6045255d1ba32cb2109d8d5fb7cdb3c197c4340623e6192f70,
                0x2e99b862b94f2f24612367fa08332f1aeb1b26ccffcf3f20724fec2e4b01bae5,
                0x28d7efae1aeafbcaf6c81bc643b2bf15b09c607418f68e819f21ebd2b7133dcc
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs6(
                0x235bc13ba4867a1c9779d6725ab77ad950745d73d21c0ddd399cf55f2fad25e7,
                0x03c45ecf293074b59a28b389d88667c8635a44edb2f9609684759b91a172bb4a,
                0x1795fc0b559b176f1f5e97d04c7ec7da6c959e0a2e5a6f681e8df3124029e130,
                0x040d95cec93355778b0a3deb1b6a82952c71474f3e86483efc928d7d99b5e592,
                0x26f3e15484586073fb0dc923db445b6c14a3adba874f7e878330b2656938d4b7,
                0x2091cb606cc5dae40e00de1e61e77f15edd941fa5ad228413dc94af08d8d3d54
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs6(
                0x0468aa6c70aa6a84368de995111a802263d5555499e0a5d5454f562b073ca92a,
                0x2574cc9a2a4f918d3815e1e1956257b695c94c33b663b98a83ea6bbfb4d629b8,
                0x0abd96d00447683c6769a706ddf94491d463647d0d06ce8567adaad0a083778f,
                0x161a32213bf5e7f8c27190939d3b723bc5becffa645259fa9f6896860e4d4ca4,
                0x10f823b0be912b372ff74089a1ee282f6c32770296f57bf95b4f00d869d80f0a,
                0x038c68dd4cf9118e98cf768d172ec9914c02f28b03a5dcb612b4dd3ccc5c6c44
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs6(
                0x03eda7a517c57d8bca104047529f633b437dd0cd7066f31881c65bc7592b67e8,
                0x0e54595d2586c1e41b58c7f41a7af242913b2f0002b05f6265c47e1acf26e6fe,
                0x1991c7b33351e14b72f95b1398fd9a34d2464ff4fb2985e193f86e8d4054201e,
                0x209b46a2b5bd0a8f9733e3f6aca3bbd06607bb03961787f4d182281a4791d83f,
                0x30099887d61450cb7c7ad28e45ddb699fce4f259ffaad390c82bdc38d59f3b5a,
                0x0d7cd6f616bca8b6c4d3c3464fdb9846b108b8dadcf2ceaf928f4ee1f7b99d43
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs6(
                0x18621649b76a78b05a20a4fb8256640737d37b66ab6c589b5f24944662199c63,
                0x191a8c2e244b17bed10b91d22fc97dd0bcfdc92bde6b6b593cf84287ac21a4dc,
                0x2476c6a02dfcd576f4920c6744f9d5338b38f15e91879a71241076ab9e632c67,
                0x1e3015ea085bb7611780a5cd431f4d5ff279c53ac1ef7977c1055b10a24794b7,
                0x0d28f902fbd17cca05274d2e658ddbc3004802093fb45bbd9592c14b78ed96c6,
                0x2c18ce7f4b938b8e3f23ed1ed80ff9cc83280f369341dc079cfa71e219fd3c7e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs6(
                0x0d68cd31c4019d893ada88d2745c1af7f6c3ad83527776f30345370ede338327,
                0x1f650d1ec4acef1c60b22644f81360f3756ac6215163aabe8d3f291a98cac863,
                0x2a8fe1f9a662e13b3672c513a85419e1f3c956bd8428f9a3cf46c271294fec63,
                0x23e3895757f24617747657b20b47c65395817894e7402a99c55379fae5696718,
                0x01eb16e69cff9fc22757c340a0b7362273a8c4f2b9cc310a93f999b930d054dc,
                0x09552f34e024a1818046f8ba6f237d0138ab15480b5e59d02fdc4f31791fb4ec
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs6(
                0x1e9bb4c7b8a7a8165c7cb2fc71450504e16367e206e46e540f7e86129af60e67,
                0x24ec7afd3826787f95d3c08ab6736286a63d592d65ed36f82461b863c9b31a49,
                0x13a1d1270d64e85174477d710d5e26215de4e10e415f24bd3928a4ba7011211b,
                0x1cde5309c8204b78b1a31c8ddd314c8aaf6994d8105cd92409779fb90cb77a48,
                0x22df1da6769dca71679cf2e8b50d9c1cf0fe904426b2326dfa081cabb10f224e,
                0x2931bcfd48210d70c7351268a096ae333d29ecc04560c3f28b6beaf544a7e967
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs6(
                0x20f9ec9b68eee437837a08e8d97ae3438d1a352ff8dbd3d8c2c93fa98b7d878e,
                0x1cb392c2d533f9c4d6d02ac76fbef2f55a667046acc2b156061f638f29d95cd3,
                0x14fb92c57e4bd7bcfbb04019c2f5f9ec4a3fb1abb2ae11b10bfd970c99c38592,
                0x013057dc5ffc7462eeb28f7cb76c59d44f453539ed11e0fc23404055f90bce31,
                0x1e377559b5e26d522a44495164eb893051e34cfb65d6f207ba597aceb7cde3bd,
                0x30187c0441967344d9a577ed055f4de1ee8a8e874633477066d56f9d10286c81
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs6(
                0x1a2b31aa0dcbf9be89814678f60efbcf8002fd411b426daaae417bbbb3e4d67c,
                0x0db38019527eaa69b6bf7fe89400a1a761563d629277d980885a8da03ae06356,
                0x0d0ad81ece26098b90e20bd4fd477bec3d57abaf55d60f84e4ea159de471a290,
                0x04e15c54e9b4beeb50043c7bc90cfc104c45c5e937eba5d7a76b94357cfb73d5,
                0x298705e6489680cc0034b9d59c77355186d8565b5f3625fc5f0964cc2852b8de,
                0x1fb05da1668a0681ab7cf0dd81d11c1c3415626752f60eabeaf8f36223c1081d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs6(
                0x0587f11c6a8a40fc5d5d91c82b819c2fa539dacf49b493eb9edc7a84c62bca18,
                0x168ecab10e84a609742d5efeb4b85aa5ac34f6bf153e5b741f200d33f538035a,
                0x12bbfaae1055346044287f7324a5fcff8eb014c6f167cd37e3fe5aa96a829f03,
                0x0662402198e1e8d39dc02c99e11494b024498739c670dd32d4ae35ceab7ccf8d,
                0x0efd26216c763df1ae19a736bd653553de910a040cda4189b207d0d61bb0e77e,
                0x132da5a745b12f6c83e763c8985189311cbc2e366d31d03d456c3b6f0cbdd7de
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs6(
                0x0cf6e0e45aca74fbbfa5f15ad37ab894d7f68ed5d745620b358a77c908cf1abf,
                0x2cc3b0de96c8deccfe3ee4fa9d829a113bbd36925d173ffcc2d57ca3f62df737,
                0x2228763cc3bac963189f72baa65eb31978c26d0fe9a6ac7786fff878c4eeb74d,
                0x17517478ae64ee9495e68711e10e4c27a601806e5239de9d97dc75ff9b46d5d8,
                0x2050b5a835d6606b5c8d3f064e13e1893f945628a84b3a45c1e1bece3e48915b,
                0x277a713ca03e5a479cf3d761c4d2a3d55a7043bcfd0dc654d43cfb2da3453ed7
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs6(
                0x2976a2db9c82df386846d900e31c2ee9820c3e06ef6c96b02abc186b18043d34,
                0x2925901575c1b2b05c694a39658ca34178628ba9e64eaa49bc71989603b61a81,
                0x23a4111a0624b1b284ab2311af51066fad91c061a0a2a2fe1c4aa26180dab132,
                0x11def708dbcdea053c99aead24a0992942bdea0df12e731b95a9b3c7e428d3ac,
                0x0082932885e3a11ebf12b3d7e73992fcb88793e72b67dbdec3883260c120bfa9,
                0x2642339d10587e166216bcb52c266f12f54ebb325a6856b49a27727351ae6caa
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs6(
                0x213efe540891aa2f357eab51dcc7c9394eb5ead6611751df464aab91379f898c,
                0x06e4a6f0443b5a29501a2f273080e0583cff4659c122f3b99c1219e052127cec,
                0x05144c428f3bc626177624a3f928b711576189c2e223d5325977853601e1465b,
                0x0204108462d5d6ca44fb7ffa7959c7b5ea8156bb781b2131871d9e0db161195f,
                0x25b0a2b569450fdd6f18ba03a228ed895050c96a901b9db7dc357f324a8cb7ed,
                0x2c769152fdcef34269ad0dcf6e5215fd7029e38976090159f9b7e2e09e619dd3
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs6(
                0x084a9bdd82815a37c22489972a79895183c97d1729686007a6499f4180e89229,
                0x16388b45d49843483d7a65dd5bf59ac7775f52cc3c013e8d43afbc25ec4bac9b,
                0x20dd4f09a853396baa0b33b055cbbd376afc5388875f8866090083cd1deb9457,
                0x2168f5b840bb0d8266979ac5c774d84ac8fa160ec2cfb1c3246b0f3358593129,
                0x0b4e13e7fdf7eadbdf0c68a20038de0904a18ee203b53d027249ce25ba8cd503,
                0x0c9fddca0d8e93df972b1ea78af96513f1c396ca9c9bcf204a17a15dd752b500
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs6(
                0x262f504e92af5304df46bbf160bb90a0aeb32d7ba6e33188f54172439e23b39e,
                0x2922ad4ee20972a4ddaa6c26a500fb1623eed8e48c03b99ddccc1f3855adf31a,
                0x224541b53c30503ec0034f215eba9973916f7439ea33fa0dcc4c52832d79ec0e,
                0x11d73c6421ae5b0395dbfc72d2797a0e82ca5c0ebc9667ef8f57a4a351d8e205,
                0x1379c7455af603a664e4a8aeacae31b27ca0cbcaa560256bf7162ac03d455cec,
                0x18bf8073cfd2bb9ea67269b57a638efdeffcdf6e76e8f41882e36d1b2de6fd16
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs6(
                0x0e119978324524a1251a073f93def33fde05ecc4d0fb5bb382b6bf7fe62aeb21,
                0x04086d45360b9b3f96b99c2d17837e45f97c372c8c05903b6758a85e5755cd72,
                0x1a2eff421a3c5e241e10ba1d34c50cb4baba8f768577594e00d0df790905f595,
                0x1d2256b00b5dc5c630a7685348e349de04f5b7ac225e11c38b3ed20d0cf7ccb0,
                0x11679ae8d4d99c77ccba8496fae0a0aa5a8c39772790bbd9285186e56c569fdb,
                0x20a919fcb1d8746755884c6e19fa89dadad38d10b47ae1be039789b16ee26f1a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs6(
                0x20d12c18f1338290d08cc092068b606621a1b849f09608e0f4be93f976f84457,
                0x19a391346c531cd6bb1c7a92271d182d9504a2bd295b45edaf8ca77c7aa9ebd1,
                0x107e8f93facb8ca9713f8b24217934ce763980c5c6e16c3df7e5c2ed728330cb,
                0x2500b0280067f98b4433daaf481da5b1c0e7d8075414f50c3c305f8c060a1c99,
                0x18428d096f83311d74a7e705bcf670f0152ea5e1f8b5efcfa12d7d6f40f5c0c2,
                0x1de8e8b7eb4c0c7f8d8987777515cfdb28f657d8974c7af0c4d7269b0828d7e2
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs6(
                0x039c4302a678a398d7351442562a4e13c68fb6909b84183d82dc117d992fef9b,
                0x1f9d67b0d3e34a1e4e333692726c16c49ec388468cfa436c2feae8bb391f99cd,
                0x18956a23d68e88ef86e0ef8302048d2d1574f249a76ca5f024ac82bb08d2cb48,
                0x0c428dc244b1b5040b6083e5031ecdf0b2486c7484afee925a83557789fc5e8f,
                0x295d972daa9a93bebc74ae40b495bac4f4a6991e47367af2eb5adab1efc7fc2f,
                0x122142549081c478bdb293be29e5d4ee41a325958e9fe0e8c9fabc8f8a091738
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs6(
                0x1e115d7650de8c973a6de728d622d42d5ac4fe8687c043c6f3cd3b8ffa806b1d,
                0x1d423437a0d567813deca8526a0c5500da3020b3a9b25054ca3a2f6fb48ffd3e,
                0x1c39763075d81de6ef31aa0afb2694849c7add76171e1eb2e009b4f883ffbadd,
                0x18bdd1f01e6cf92ea4b47dc3b77814c953a87ef37c4e545b6cfb6c60cb856e19,
                0x2e23cc1668cd7c6092e5adf941eda4670fb9edb57f0ec17b2b6a7c88e41a215c,
                0x09b938b7b89fa4b24eb0918689ccfd3143bf2f7ce63902a3543ce2e03b32709d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs6(
                0x1b2da1a42cc1c531425efc94ef9deaee2a0199fed3c041a1ac133777236e9a03,
                0x044fe5916cb96231439228375670546715d49248e1716b72829aff019f075f95,
                0x2a457e8ea722673a974a0588139dc4e84f66fc87a9386d9547fa25e63ac3665e,
                0x1a63bc7f7ebff94649541c2b844020861a4f2a0e61542ee7c201d8395cbb1b45,
                0x10faf698b2ab7b697fab810b95c95efd9990216b022e5a65b20574c27976d22a,
                0x2a8e8306ca833c98e93be3f0fcc0e27fb734dcef7a0910260befeaad08efcbbd
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs6(
                0x067a9b18979dcf80e54e4eabb0d6d7e4a8726061af76bdcf1ac00a084a9a3978,
                0x151c95cf9ed2076fcd604bffabd3f230740e22ca17a2eca1fb5275eed3463776,
                0x0c83682920f241ae456b68828dcde05db2eecbaa8d3893ed3a3fc826e5b6dd61,
                0x14d6d4418acebb374c1d7acbc00dc228a5c261e5951c523b44dc89159a846c8b,
                0x150ac3760b340cc5b45408885d5d3798b685669d6157b694f94aaf74cc58e744,
                0x2520e635ad70bc40128fd1217ea160278197db802bfd542aad7e1d76c922ee64
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs6(
                0x17055a2d4f5e26ed4cb900d6485ff521968e75c1ce6bb6bf87e01ab418cf86a8,
                0x17250750ff2eab031fdeb20d370a22fc843c90e670168d5b49e9acf8c97915d8,
                0x02289d4bce6fb73538fae52da01cdcd05d5a5a2ebe5051d980725f6865b7d00b,
                0x138df2876cb5ccfd4a5ad2dcd97df67326bbff080fc3663479994065713e1164,
                0x268eb3a1fdc70a8ed28c65936c51c44f39fd44f221d890c0732c575092468ff9,
                0x27efe1c5f852738621ead18da5cecc06fefea754c4e92c37cb1de34f94fcbb76
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs6(
                0x25004efd4859927f64e63b9accf95fdae368f4758e6d9bd1127c567b62e27110,
                0x04d2e15d54b4c8f023c14e794687b7d76498aca840e2a16bfb5a7ef28d6bd33b,
                0x2c3d3bf0b5b1ef772d4351da76735a36dc32a9e649dfe3904fdedefd6ca92fe7,
                0x28cf1113c1a4289927108519d51f9cb197d44b5e5975efe3c1f458322c960a87,
                0x2c5f8abdec01e5f7016a27fc63ba3911615de12b99e397f5868f9c5ce3f5a6c6,
                0x0f261fc43efb6cfa8951959652ad65a6458fba5fc7f73c089fe0f89e984b4111
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs6(
                0x02ebfdf880703f8dbb3dce71ecb280e50b174df7ec1179470a9e75ed3217946e,
                0x14193aea858740ee9a8986ccba39dcafa78a7756ce534922608dbe3e94a7a642,
                0x204fc04145a541c4c311b2b46f828125909d2b697fee49de6bc687e355de4378,
                0x060a6ed042b9cd732fff2cde77271b09e22c3b929df3c8d022873b48be792a57,
                0x1eb4ba0dc84e6cc5f722552bb18eeace5c676d50e6588bbf555ebfbb7a2c8073,
                0x28f45a7fbff016953ac900b67c06667c8c2ed287855a3034139d1d734176626e
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs6(
                0x0c9c9362923cf09974696866cde1adaccfa2479dd144610c2806be102fe60c66,
                0x1abe4b2b2a58dea43088776c4df2657148358f7573036c6be782ffc950481172,
                0x1a47003902bfbd3cece27b213f0840aafe5b48ad24aa0bb719aa869322d715ce,
                0x0a56ff4fc00e3a110874ab6543b58cb0ff0276caa796bfb9951511bb610a41cf,
                0x274e8b706c74cfb6f90df8dee60182bfadcb388681a7c0f95f10b8395f3ae780,
                0x24a952627adf326482b5bbde28b0a18d0325546c5273d7e682e563a75dacd80a
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs6(
                0x1346dd54130fa17b2e15974e8f0188e43286152c3c3136a35569e6fa93b86033,
                0x1e770eb185472ec7d612ea03a5ebcd80f8bd29f1eb3daff4538ba978f7995286,
                0x1a626e2780ebeb5ae1a70bcf0e4fdd899dc51cff032de70e1977e8030b32bef1,
                0x205705a9e660f607757782e4b0c21d08ae2703553275d64a683c9c273bcd8f81,
                0x081301e77e853dff33082fdcb35ce14cfd2fe6db1f024019e0a8dc52da19c33a,
                0x11ef17b01df624ed637cb500671b467993235dc832220260783cfaaa851fe1aa
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs6(
                0x2603296073eba43caa64fcf4aad813759c97aa94b36055d870fa2c69deeb9b6b,
                0x0a53715ebdc45acb643774e2065e5db6b7e8341c9776478ca1b6f43b8ff6b092,
                0x07d390473f3de378813b6f54aa1d009eb358de7ac24d87291240b9162ad2eaa0,
                0x2e1118be9eb2f76dd9b9a4aba958ced041ccdd7456bc6f88d8d08b5925b8c886,
                0x25e5b8e9b053f2cd3a79e9ae6cfec21f374610b3d19432f9ad6b8194c5ecc447,
                0x0c1fa2ef1281865f4bed44d95176dd3e34268fa6e6da2a258be4cc45034a6ea1
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 63
        ark(
            i,
            q,
            HashInputs6(
                0x1fee6363edbc102c62dfd38c87423ec04e29e36129e84e1710c0dbdd114b6c31,
                0x26081f6b3ff99eaedc3eb95d86c550096ea40593aea1d63fd37c09b3ad7efd30,
                0x0fa8fc9335f707e33f54d811a4ab5e129b94b4777769836c434e046d6cac2070,
                0x1054f4731615d77d0b7e34d6624067f047feda6c928a300e96660e4a2862e943,
                0x140349e9aaaff7086c409b3e828dcbb6f0b588fde73958e6f74dce11c3d4f607,
                0x166eec34529585db9bd2736b24fd0ae45b2ae982ff64949f95de4a8395d064d1
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
