pragma solidity ^0.8.0;

// This contract is for debugging/testing purposes
library PoseidonU3bn256 {
    struct HashInputs4 {
        uint t0;
        uint t1;
        uint t2;
        uint t3;
    }

    function mix(HashInputs4 memory i, uint q) internal pure {
        HashInputs4 memory o;

        o.t0 = 0;
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t0,
                0x244b3ad628e5381f4a3c3448e1210245de26ee365b4b146cf2e9782ef4000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t1,
                0x135b52945a13d9aa49b9b57c33cd568ba9ae5ce9ca4a2d06e7f3fbd4c6666667,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t2,
                0x285396b510feb022c442e4c2c1411ef84c2b4191bac53323b891a1fb48000001,
                q
            ),
            q
        );
        o.t0 = addmod(
            o.t0,
            mulmod(
                i.t3,
                0x06e9c21069503b73ac9dc0d0edede80d4ee2d80a5a8834a709b290cbfdb6db6e,
                q
            ),
            q
        );

        o.t1 = 0;
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t0,
                0x135b52945a13d9aa49b9b57c33cd568ba9ae5ce9ca4a2d06e7f3fbd4c6666667,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t1,
                0x285396b510feb022c442e4c2c1411ef84c2b4191bac53323b891a1fb48000001,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t2,
                0x06e9c21069503b73ac9dc0d0edede80d4ee2d80a5a8834a709b290cbfdb6db6e,
                q
            ),
            q
        );
        o.t1 = addmod(
            o.t1,
            mulmod(
                i.t3,
                0x2a57c4a4850b6c2481463cffb1512d51832d6b3f6a82427f1b65b6e172000001,
                q
            ),
            q
        );

        o.t2 = 0;
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t0,
                0x285396b510feb022c442e4c2c1411ef84c2b4191bac53323b891a1fb48000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t1,
                0x06e9c21069503b73ac9dc0d0edede80d4ee2d80a5a8834a709b290cbfdb6db6e,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t2,
                0x2a57c4a4850b6c2481463cffb1512d51832d6b3f6a82427f1b65b6e172000001,
                q
            ),
            q
        );
        o.t2 = addmod(
            o.t2,
            mulmod(
                i.t3,
                0x2b03d3f456650025159cafbeac013219ead8ce794fc1479d91ac688380000001,
                q
            ),
            q
        );

        o.t3 = 0;
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t0,
                0x06e9c21069503b73ac9dc0d0edede80d4ee2d80a5a8834a709b290cbfdb6db6e,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t1,
                0x2a57c4a4850b6c2481463cffb1512d51832d6b3f6a82427f1b65b6e172000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t2,
                0x2b03d3f456650025159cafbeac013219ead8ce794fc1479d91ac688380000001,
                q
            ),
            q
        );
        o.t3 = addmod(
            o.t3,
            mulmod(
                i.t3,
                0x21dfd0839da2bcea0104fd995aa7577468f122992201cecc15eaf8b45b333334,
                q
            ),
            q
        );

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
    }

    function ark(
        HashInputs4 memory i,
        uint q,
        HashInputs4 memory c
    ) internal pure {
        HashInputs4 memory o;

        o.t0 = addmod(i.t0, c.t0, q);
        o.t1 = addmod(i.t1, c.t1, q);
        o.t2 = addmod(i.t2, c.t2, q);
        o.t3 = addmod(i.t3, c.t3, q);

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
    }

    function sbox_full(HashInputs4 memory i, uint q) internal pure {
        HashInputs4 memory o;

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

        i.t0 = o.t0;
        i.t1 = o.t1;
        i.t2 = o.t2;
        i.t3 = o.t3;
    }

    function sbox_partial(HashInputs4 memory i, uint q) internal pure {
        HashInputs4 memory o;

        o.t0 = mulmod(i.t0, i.t0, q);
        o.t0 = mulmod(o.t0, o.t0, q);
        o.t0 = mulmod(i.t0, o.t0, q);

        i.t0 = o.t0;
    }

    function hash(HashInputs4 memory i, uint q) internal pure returns (uint) {
        // validate inputs
        require(i.t0 < q, "INVALID_INPUT");
        require(i.t1 < q, "INVALID_INPUT");
        require(i.t2 < q, "INVALID_INPUT");
        require(i.t3 < q, "INVALID_INPUT");

        // round 0
        ark(
            i,
            q,
            HashInputs4(
                0x062c6aca1e92c46c6020cfc8ad80661855c9434464ab4ff3335151d0f35f9021,
                0x14eeaba2213bf28f15eae1a8164fbefb00bbcdd4b7ecbe747fa7109a34bd5c49,
                0x296a2d7c793283f53bf61656e498b02828728adf20ff0b3398c4cba57e9630f8,
                0x1ab075c41d0cc6bb5ef5529ef7285551e83f7c7c6107edb3ce89a914d14b4544
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 1
        ark(
            i,
            q,
            HashInputs4(
                0x2bcd55844d9c1835dfe90057d9f7e939f0668be5d84105f6516481370e4eeb6d,
                0x15fbcb4aa2b8ba7625e7a0da6644fcc82982f40ec86d905dac78fa0d20431e3a,
                0x0fec3cbb2dcf7505f07505eac17bdaaa1f3ce0686700256d0eab2eb1252894fa,
                0x2ebb18631151593143043a675cd48b43045f3b0691530426d3b8ec378a7e5dda
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 2
        ark(
            i,
            q,
            HashInputs4(
                0x29256595d1daf032c876ea484fd59ff5d2afd3b9e3371e620046b511f89fa16e,
                0x11f2c85c8341a8b5d6a0ae5c6d23860ebde99c4d06b22c1b0ea25b03ba2663d0,
                0x0223378de1965135563c66c150eb5fd6c53f587e2315891908bac7184bf578fa,
                0x01775c43f3d8b33cd4a8c3698184574673de96342fa21efe4d01d5c73b753014
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 3
        ark(
            i,
            q,
            HashInputs4(
                0x247762988996b9dba33d1eaabf03623fcfa96746fdb8a1c54ec8caae42992276,
                0x1914acc4486a97e2ca3a0fbdc7d5d09bd8313cf5c38e9ab5ef7bd19a4ac10ec3,
                0x230afe858d2bf91b42329dccd88a25a9d4ba966e14419520b9aef951de943862,
                0x046ed2e4ed42ffed58893eedf7975e990949483210b12d7aad6cb377e5186dd2
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 4
        ark(
            i,
            q,
            HashInputs4(
                0x1e95c3114538053b8769901f7fb143dedf9c59bedad62e2851a18f4ee0c5f14c,
                0x00e39cd8f12a7685ede95961e9c0cd821e0f5bc5f7c24ff53bb38854cc179214,
                0x22a48d1ebc56b76c91f5c91dbcb176937be38991d887598285d1b87b6987bd76,
                0x172ad173889fea3543994d23756e464708ab4e3ffd5b523d40a2df13cbb0ee96
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 5
        ark(
            i,
            q,
            HashInputs4(
                0x2617bb0620340ef42e305956f29970241a45959615260fc07f9829c254923666,
                0x23beac684d68b3c310a9ba2642e6dbf66e9bdcd3e40b0c047990ab7c368aac11,
                0x0411e23d97c9dcb808b8ce71d7baa99aa95f8fcc08529699e55f751d79dd24e3,
                0x273a3a586619a58e3e96b32b5cdc520880546db015b8777e11e6f7450439d0ee
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 6
        ark(
            i,
            q,
            HashInputs4(
                0x2b6714f91d7849d1025ffa954f57569c5a8838ab75b134a1d30b09faae282efb,
                0x243b328323cdbb3c7cdaeeb152adee94276da72c7cd8a35e99ade7868892cea0,
                0x26a972f999b68e97ace9a4eec0f943910103030b29cefa3f7be863dd1707f968,
                0x2adf1bb322498c052c54b8fa10f403e0fb9dcb76158431831ac9376def9c740a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 7
        ark(
            i,
            q,
            HashInputs4(
                0x23310b7ef40c0babb2a2808664e3fdc7205751d1ddec0a5a76b4ed236dfe68dd,
                0x148474f9969233d119bae3ee957038d65a5ea6afaaa6cd499d65bbffe3ed05cb,
                0x2ed449cd4c9f6e562e92ae737fa0733c67be1ee11bebfa3fe048803ebce8f18d,
                0x269da38b955c8c6b6bb58695a570e6a34b61769e87251681cc966fca9d2ddea6
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 8
        ark(
            i,
            q,
            HashInputs4(
                0x277a69c44437b46607d509f1879e92c6584d1ff4d47b6891c34c9f6afcf61810,
                0x2ac73db02a1461367c8044bcd02d965bef18b65adf04be5a60786db393176727,
                0x23ad5251099c88cdbc3c2471f3b846c05938a6bbbb76dd2dd245a9bf0b6b3e1f,
                0x2e4536eb7ec62c78fb9db28766325bb0885ba6cc299b5cb680ef9c7f11add7b0
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 9
        ark(
            i,
            q,
            HashInputs4(
                0x082d67b47527c7ccdb2dec59d922dc693bfac2f92d6ff1f8753b3f6702106243,
                0x2f6787037cb13533657d7ded7377ecd3bd652c827959d272b9c82893c2a755fb,
                0x0714c33afb146987a311230efd6695758e23ddd016354ad17caf46fc183f53c4,
                0x2e190ad59fb275f062b080a1686f0f60d1ef8b827e233d5961ab220bb23b1c2a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 10
        ark(
            i,
            q,
            HashInputs4(
                0x21559d269992ae057bdc4324b93226d08f7886b5f5134d3e1f7e49eca9e16394,
                0x1cf2a4d57999d721b74f11fdb6ce5820145245b8a2c5599284f784a8f6719e46,
                0x0e1ae25fcff96304a4fb6207644072c211c7beb0ca90aebc899c53a876016609,
                0x1584ec5473cc0733f3acc56cfaa968300fc07de5e886b3bd1d14a92e77c7abf7
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 11
        ark(
            i,
            q,
            HashInputs4(
                0x0a7bc3b154447d511f04871265b8062cfa273c092a9e2f62e3c2bbfb112cf7fe,
                0x28747836ecd2be5d40b988cea79a8857c3cab62a95ae9171366b72f7dea939f4,
                0x23be307ee51e97c1e2937db1830215a5eac33d725738364adbf3d81dc7c2d30a,
                0x181def07947f96db72fb5e362263f9c8c8b69b4674f5211b9507cbb7b873831f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 12
        ark(
            i,
            q,
            HashInputs4(
                0x0f8d21a7c818b1f4b9f83a9d65f8f7f55f5c5eb4593ecf684221917b3e39b588,
                0x05295519ef59d19282820564c1b82b983481b2a96cf7dd2247d063df441e6ba4,
                0x05a3cd2f51447738a062fd93a8272b5289315b1aaa64413abdc40d68b7130ad2,
                0x11492a233946829dcf370d93e21333b3af3c50b0f383008df2c310fe3b6fc474
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 13
        ark(
            i,
            q,
            HashInputs4(
                0x101ccfedaaafe9bd31bb88976fd9f03a90e0d8c1cce55e9046d2511c6dfeccb8,
                0x0a152c325be5b2772785a2f728eb20cec5b22436eeafdbb381e045c6a62ab938,
                0x15fa1605b2ff2e7e817801d194d2f60c569549ebbc4bb59ad8343e2b4c5944ea,
                0x2998881e818b9809e8a5c8c0117b1f7ac8e9bfb2f0bc517beb0d1f21b08b3548
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 14
        ark(
            i,
            q,
            HashInputs4(
                0x26d233c6367e02f595aa143ebb7dac96784a98c5a3be6339e8d4e321566eb932,
                0x23d5c7234f84b69c425754bccf3446911f57715c0f32c4045ae12400743f178f,
                0x0c3e111a0162923b3274576342aa9ddc97724b744065658ed192020e175d79d3,
                0x04e84eb21cbf0e9ac7fba9f16ec322e651455b8d9e2c9c7a7fed1ad2d4ca41d9
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 15
        ark(
            i,
            q,
            HashInputs4(
                0x177eae242329a90b9428bd2a770b79ddbe20c9be111b000e12e8da1587aa098a,
                0x1dfd07af57d83e452156d2395917954f63112b1cf08c65b5dc46060284609cbb,
                0x0c93cc22811728871ffee73031dde764f68859060076a84c165f32bd80b144de,
                0x192ba9406dd09f462a2bde34ff0c3ba11d9be34093826bcc5aa29bef6baf4358
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 16
        ark(
            i,
            q,
            HashInputs4(
                0x1ba544393f910c5ed2a958703d4db259b7ba38e00aded367a4c8a668672fc223,
                0x130d3c3ab75a36f92a4d21c43cf05de1f22dc6522c744aeb1261567262c0ff52,
                0x2eb942f851531ef85bad6655be277cf999b54b92e06d203e510fe1dc6a55b907,
                0x136aaed22fc112f0fee586d7cf0c6411d45eeb05710726a4c83b622d24e9be3a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 17
        ark(
            i,
            q,
            HashInputs4(
                0x12a19ea10014c706f847311ad4fd2c4604fcf5b8512ecc0cd406ae03d9c2637b,
                0x1b96b73416e277aa0937d83c2302e1fb814049a5391eea4440ba5db482992d1c,
                0x0cfe78b62e6e92e1598b89ba9cdc8142f0bdc8c2e7b044532710db5695ec5191,
                0x0c57aaed1ebdd8c620a331358eec7033a7a9131be98c0ab89c14e8f83844b07d
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 18
        ark(
            i,
            q,
            HashInputs4(
                0x0155e1f2717d6781a983d590b4fdc9c49ac0c38941c126f374de635fd2755f8f,
                0x2f8c35fac154c165e591e13738c6ba6e5386cd5df1c2e6d3e26edf5d6c7edb7c,
                0x26eb32752b9ba4fcea44bc87eaca32bd5519b5907a6b23e0a7a22b7d11e15cef,
                0x1b21e5eab111193fbf5417cae28e4737a5f1234c229e1ad5a74304086c9827cf
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 19
        ark(
            i,
            q,
            HashInputs4(
                0x111dc2c678fb55005223e774dd129e7764608e8138fbeb1ce5dc8a6979a924a0,
                0x3024a27ae2644fb248a6ba362f771517da30ec6c46f61f27a63ca4c59ff8e830,
                0x018429beeff6c5e2723b1766e152e2f27f59b1b9e71d64fb17fd40e024e75b03,
                0x0e5a747c762f153da09b482266454815b8e5083a8d0b59f7f9311ddd79041395
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 20
        ark(
            i,
            q,
            HashInputs4(
                0x079d637718b241cc645289f8d25ac5952505acc57d1d7e4ffefd04813b34bbfa,
                0x0070074fb2d6a94e73eca8cd086c36431eb9d5adb3dc7b3c70ee0b118c225458,
                0x234dc6197e3dca9fd5e86ac3cb64a2bb0844d066dca20401bf8ce948f96ac82b,
                0x0225b5a421a0705e7d9db0992862078b88766b068b7fb5bec246be1d830dfd57
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 21
        ark(
            i,
            q,
            HashInputs4(
                0x0908cdb99efa659af9d2b7e91325e2339f429483f78e803941e4354260b97554,
                0x0ac72765a8c8304270058039d6c7f10b632c834473ccb5d61c9b992e41ab4dab,
                0x1d1ccd8429ea10853a07a29c7432db4970a024fbc6b60a2b86b409a1c4c9ea7b,
                0x11ccf1fbe38bdcb6918c67855a3c075efdc43e26ff61abecc2dbf5ad6e996199
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 22
        ark(
            i,
            q,
            HashInputs4(
                0x2a43e4c56b73c897f858c00b1f8744444c6b5355a8db4d18f816ae9a9526a897,
                0x2412f617fd006fc2dd379a160b06f0389baf81201fd6a84da617f6bd93903b58,
                0x1756030eb27731733ec831c934fdeb2345a96f1bd67d2811739e496f31c42140,
                0x03b715de5b3f4c3bd38faf77a5d0c09939947e4ab59e4a85ce1aec29f4637b08
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 23
        ark(
            i,
            q,
            HashInputs4(
                0x178545b27dd6bd53d128db98747e80b8718218d238dc754bc8df8bea6c3d79cc,
                0x107079aa6abee32cb03f749e6f83d5cdc47e2e91e82c797a78c8b28a71416b4e,
                0x04082a3658d386c5fa20a4c8cd6e73503e9420c68fd00b83398d2f488a44d581,
                0x2270508f9d6dadcb0e02f120fdfe38487b5b0f69bb243ed464c3e002798f2265
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 24
        ark(
            i,
            q,
            HashInputs4(
                0x046f0e252500552cf8fc3e58a39e84d999ab4836ce57585e902afb24f847d61c,
                0x1ea9fabf55d55d84323ca3dd16a8a6c53800615ce67b601845c211f5e3faa342,
                0x24f4f75614b06ce4c6aaea5b1002fdb71f284daa807afdcda58e0b70224ddb03,
                0x0594a498bacd7b3212014e1901f6219ff89c7ccec2280584bd53d36f2e49a9c3
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 25
        ark(
            i,
            q,
            HashInputs4(
                0x2ce8da8fe21876ef86dcecad0ffe9542229309feac2dae2af6e269a9901aed80,
                0x2b2e89df9958a60f7db125e85fd3da7184428df6c7c41075d75fc64002810592,
                0x25c0d5214cd33baf7cc873f8e47cc5b641d8047b232bcef84d29efbed4927668,
                0x02533b700f34a3bc7f3c96796bc4fbf1dc62aeb77ea374a942c318fe2093dd35
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 26
        ark(
            i,
            q,
            HashInputs4(
                0x0bb3d5fd1227e5c53a06f4ad7ba2d02415ba78f0cf22cb2ac965f50ff2fbd437,
                0x24dcf69ab9ca6d4c06488d6968326b452f6f04f286e5ffe6321815a9af37fcc3,
                0x26b198385667ce7826167ae55663e16b42e5748f8aa74dc1c7fc89fdf8de91b1,
                0x0c5583a503417da5d4585429ca76cd0b800fb078dc17825fcabbdc9403b2d4aa
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 27
        ark(
            i,
            q,
            HashInputs4(
                0x075637751ca0a4494b8157ee6d419edf9edba3644ca2af11fd82f80b5ec5039d,
                0x15351656361b41566c2d3ab128ebbbd9a7299eada99e8d7f1a96d4252d78afd7,
                0x005f4a8f76d7e3c6401eaca534049f29accc4bc35da4de533d3677861b359573,
                0x0496a7d05c24ddb735e5b20e40a96f680a33c237f0cca9f487a05a2753428d49
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 28
        ark(
            i,
            q,
            HashInputs4(
                0x0fe8f4e256e63f6b6992668eb6a8f406803bf47c320238c21c35387ac1717607,
                0x0b7c7aeaba7f19b9e535a12520fa2d6396f81394a815b1d495bcda16a43d5767,
                0x1a5fe03af259060e72b9d223dddf43bb539239899eb450bfcffc8f28c0d63eed,
                0x2d786315d1dc2036e359e13c2916aa511984225c5ade687781d19ef752e25b8c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 29
        ark(
            i,
            q,
            HashInputs4(
                0x05ee2aa110120d1746e7340304a5be1b34f4ff48e276b43087e02f9903dd40f5,
                0x16f2aa9f5e48f9f81b1d4b9833553c7c64e39cb3168e3eda6a63d5ed7405216d,
                0x1c9df34ca603281855365c200bf42a44b6def0961127bc0f66f3d9c089985637,
                0x27ff728612f725944265a7b3e485254540dfb6c9cfb1301cf5d8a02462fab1cb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 30
        ark(
            i,
            q,
            HashInputs4(
                0x134d27acdb0bd58812eccb8f018f1c5cd3ed7485fb512238488a13d9d573ef31,
                0x259168c10603258ac07d4fc147a81c57338a31fac9c2fa85a19977599cb8bead,
                0x035dd698a8313ac807769ece0a30a4f8ed161039b528bd646f3d808199698912,
                0x28cc0f781024f67048d030852315975b5192617c01465be524a0ac01bcd2ee31
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 31
        ark(
            i,
            q,
            HashInputs4(
                0x052811d6ec990b181fe4432a2dc49f24ce9cd76d27596f2640ecf31fe58f6d5a,
                0x07c8c29d0445597b3b85b465fafc28832bb31a77e28d965c1790ce0df4e22008,
                0x04f579792aa7e217f44fc1212022d398fe77f3c771be647aea033dbe09a95d74,
                0x030c8731e751707e06847b5ea2e05e0a868f0c6e55800ce57965b28e7b4d6e1c
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 32
        ark(
            i,
            q,
            HashInputs4(
                0x178f1a8728a1205d8122e0a8fee97c1f8e51f39634cb7e6a45c0a985e31683c9,
                0x16b6008032b6f34b8aca4aaadf35f14c9652d063aa5027095863e44c40f397f5,
                0x1e4eef2c593985c847ac81f2350cd52d51f6154a24662bbb991e7f8bb7b74eae,
                0x281a1707a55dcea809259b7401226657604679d594d1dd5d81615f234c82f7d8
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 33
        ark(
            i,
            q,
            HashInputs4(
                0x016b594eadc674f42202a52f2ea8e66b039871f14229bd30380bd9ca01398e62,
                0x1b317e817d873133f4210b144aa4f6f2dd92af4d5c661da897ae6e03308f404b,
                0x1908a8fe3d25ccd5402a336db3183d5e06cbeffc06ac60aaafa4b47c7e725094,
                0x266962e4a5af371338c5e8cc772f98dba341a465d58e5ce7be1b4c47d9662496
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 34
        ark(
            i,
            q,
            HashInputs4(
                0x21746ccb8a1669a753bebda71afcf98f261f918ac3a5938130771549416d2b33,
                0x19aebf77595a021de63e7706e91db942b7fd09c25104a09049014a37afdb5812,
                0x22603cc38bb21af4777ec442679bf688315fb45a92765b4375293d840fb11996,
                0x0d35ae23bc87037913a7c4383e3eb3be0bad7582984b8a7b515990d89ef0f245
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 35
        ark(
            i,
            q,
            HashInputs4(
                0x1c1c697910a8e41c88c1679c3d92a3963b4fc6a47b24fced2b940ac95f4a408d,
                0x1ca9e35686bf4fbe4a64d4f898518f13d9efd237cf91b896c32a3bff7c80bee6,
                0x14cb81d1b894187d964ede691edf60b0a445e608764dd100f15a2c5b3a4e8afd,
                0x2a6c8bcb6f72df74cdef9c1b98879a9179d0245dc434170a439dae87f9dee41a
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 36
        ark(
            i,
            q,
            HashInputs4(
                0x0a4c43aeea2d4178199693365b4b05f56e6e314e243c5a1fc2b80588655d158e,
                0x1bdbfb77ec520369972f8eb51b9f8187b25f354c29e0d7dffe27712b7cd856aa,
                0x1ac400527065de5c14a262470f77bab968a5ad2fbe111e6b0b2680a8f189a1c0,
                0x0526fd130c672b712b11fee5da81926447c5d488fd5e1233d1dd376414383674
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 37
        ark(
            i,
            q,
            HashInputs4(
                0x12f8d1fab8a19b34c88abfe247a44afa6ba9ee834a07f4e1e32674fe313e14c1,
                0x2bf98d5e6de258410c8362cf2983d3fad0998c40e11443f1cc0f40232e2d3705,
                0x0bc8abb18ddb7cede29b2d8dcefbf4c4b9bff1d84e902f985c31125644ca10be,
                0x08c7c7ec07ced70d6b1b8f30bc815b8be03262c04efc8819ea0e5ed0da69fbec
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 38
        ark(
            i,
            q,
            HashInputs4(
                0x25980123cff50082a4fdcbe51a203871b3ba46696ba933e4a89e7b7ca79a7f3e,
                0x207a75effc6f74f4bdcc5d06f48d4ca55563f1c7418ab771e2eeb0ded0937b0f,
                0x104701ea21023fb68b695fe87aa3af01db074b15125a6a570c77fb8140830f7e,
                0x20005561eb500a83b657b2c32808a25e05cb68bf7e97c11375dea0d7d0be78ec
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 39
        ark(
            i,
            q,
            HashInputs4(
                0x1f03a4f63df6ac8c2c9125eae947e5d5d1b663dbc4a00556ee847aa21165c288,
                0x1d2171f8093461111ed738afec038ba015864c4d66d480560df9b6794f075610,
                0x08ffba196691330a32a56cfc9c536ec50e17da8a4303ac10e926670f863fe90f,
                0x02ab60fbb5de041572017587059d91c0cd9654b4fee0df43eae0fdeb7bdcf8dc
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 40
        ark(
            i,
            q,
            HashInputs4(
                0x166e6ad289d9b5a412eef66a22901c902093c9de42fd9653b911487c4c3f2efa,
                0x2d4ce67ad7fc6e1b9282a994381bd283f37730fcaa8d76ded33890b8593fa48a,
                0x208e3b25ecc461666dcbdf4b6fc31dc2401a5aa0300131ac146289084e45f797,
                0x2f0025fdde0fc92a153372b46bb8a6f075afd9930ab352c8bac0b932c15a2d33
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 41
        ark(
            i,
            q,
            HashInputs4(
                0x1585c575c253fc0e2eadd6dbb3e0dc6d85012209a32e1c6d88530a251de28786,
                0x1c41fcd6a2e52a7fe8ae67fe520b7fb826b20ced5873312da249fa30c8bd5dcc,
                0x13c31471de3d2b315bdc058af41241a6bfadd0a579d471ccb3ba32e7bd38d7e3,
                0x096740bd61bb991dd3ceea397efd122e86260907c51ac14622381553fc1840ab
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 42
        ark(
            i,
            q,
            HashInputs4(
                0x10672737c12b2ec496fc158d7a053c278ea47780ae0c7e24200e2804bf94503c,
                0x0aacc473c04c002163ed589c8a7dbec5660a553665e2e2991f91c85318582b6d,
                0x0d7ee3a8f23139dd275edf874874ed653ee7e2a741fe253756f6c3dd17ff990e,
                0x15aae7d2d87c01fa8edb9859de8fefb9cde57528f4c54accf8d0389b2fb9c795
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 43
        ark(
            i,
            q,
            HashInputs4(
                0x00d4c4aa2dc53dd9b2e66fe8e5e761d222c152a13416976ea87403a8e5db0d66,
                0x27ba19d17da6ab3cb8cf90987e876331880e51fa512bb4df331886d1df952a6e,
                0x171d9b3603f0256328654d0d43defd3d65fc9664adc0a84efd531a590e7d9786,
                0x01500b0e935c638b959f0ad962a46dac1be52a2e28db4f9fe9e59426f3d83a91
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 44
        ark(
            i,
            q,
            HashInputs4(
                0x1ae1619f0c8d5bf857c53202e4c506c78e8977dcdb01a9d21c5ede20aa393ddf,
                0x139b58e89cb51ff5b2b862fbd33bc0ec96048ddd4d09cdb96dfe71b23ebee9f9,
                0x1da6b9818c0cf21c320faf51e2cc29bba405179d484c9400d928f26b62955b4a,
                0x2587321571877373ff6ab917e30f6ed72d78333c85d75eb004bf0d489fef0948
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 45
        ark(
            i,
            q,
            HashInputs4(
                0x042181a77eb6f3ae944d0f08ccf2867ec4a6f47fcacc47676e0ac77580a4fb62,
                0x012cf24d3c45f9ac2d7aa214abe8af11410520ef53b5182f3747c116c762bb04,
                0x2c9466aa79795f451d7b2d569caeeb19e0e15c1b8d0dee461e1bc756dfde7a79,
                0x2d408b4b4533c3eedf37fa79e725ae713e6f0039cc719b03321be66a0ec603c2
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 46
        ark(
            i,
            q,
            HashInputs4(
                0x1fc41d446981daba5ecb2ece24dda3dc5ba392e0333138ea121e59c46ac29cf3,
                0x06aa082b7541f77640a290468a9e82ee39079d8206ab0841d8d58e88ba2d9189,
                0x15ef3b9d50f377477f095cc3cd03b2989781689105064b64a0087638c64ebe84,
                0x0a90e6b5fab4037fbecf2c80b643fc2a5b8e99cd95a27192604d8d7a8ccabcf9
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 47
        ark(
            i,
            q,
            HashInputs4(
                0x0db125fd71767a993dd7ec4c9d38aa48c237e022590be3544ac83bfc69f92a22,
                0x06037674e7b173e2d24de01aa4cf094fd01e9fdd106397fd02eb8f37348da73d,
                0x1841e8f9ac8ab08085cc8c16e730ba837afd49f3b0f9db20a45ad41a79b267d1,
                0x25725a5f311630f6fa8324445e0087cd642869cb57c9f8261bb62c9fd2a56980
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 48
        ark(
            i,
            q,
            HashInputs4(
                0x095dc3c5ed6f713c97999053186b0009b1c659387b2b332860e33925cbef5388,
                0x0d9abad437b44000a41d240498121ff1112e19c3434abb708951319361e867e6,
                0x07ef67b5cd2b35f0f238581a46d9c6277139331d81707dce5444fd1a72cd93e4,
                0x07dd79c1d9146721eca123fe5f8c93808b5774593273a77a4c154ee3653c4dea
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 49
        ark(
            i,
            q,
            HashInputs4(
                0x188194aeb971c87f98ad768e0fe218c7179e65609c851328dc300c31797a969b,
                0x12b0362617138bf98482f29bd4db68465b48a3251a105895e09be002897521a1,
                0x2c3939a8ef0739b2e94b0db5b32188f00686e3a8d229489f6b05a7537daa7330,
                0x30307e22de5dfda2e5810aa4266c1584fca3fd13975ceaa107e20af9c0c15e13
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 50
        ark(
            i,
            q,
            HashInputs4(
                0x0d1ab46f67e8db9aeea6f0f5515706ffceb6064203cc39ed8630d3c8b3d510ae,
                0x1d2fb74bbeb806329916d908bbec6089ceece8b94237fc6b241773f3ff529d13,
                0x19318096f75da85a95e9a5a3e2bafc37e6dc45da570e3ed175eaccd3a919bec9,
                0x14d17228a4ffbc78f9e66019e6e6898870d5bfce021064f8405c7b286d58c937
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 51
        ark(
            i,
            q,
            HashInputs4(
                0x026a2df77302e1a105ccd2ca8667a378ee50ac98d11ad081deedc14235f3fac6,
                0x18ce00846aff15eec9133020d921eba4e1ee9d8ffd6150ffe69a70d15dd1b7ac,
                0x0c879478563dc8c68a484ba9a0bc4a72a650494e5af9a35c7871c94de1e2b4a2,
                0x2b6fe209c5570091e8633be911725ec22716726a2c9cc566f050779225c3812f
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 52
        ark(
            i,
            q,
            HashInputs4(
                0x21eb176282351522403b995acd9c1ca025950109386333d89f79cc10aa989b2e,
                0x234c773095e28e6b12c67c2f7872e88dc5469762b407a9cc9471cfb4bd259b2d,
                0x2283fcd1eb4741702a7976fc92abcdcba9e0869732d55be3664fc3ee03b80936,
                0x1cf0e5100bfcf33073db928516a7f552670a6ae65605974b2a1c4517790ed604
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 53
        ark(
            i,
            q,
            HashInputs4(
                0x2a13f902cdb035f0891599636116af326307c2406e04ee43143138557cbd1c11,
                0x16dc2d9cfe66518ed89641fea98dc84dbc6bf1b84d84c24d5e0ab5574edda2f3,
                0x23fd820a6b29ddf80df7ecb1ee96ac8f014e87113973261ea0a69ed244282166,
                0x02231d66a1b80840512f3880d15787974c0f6df853f8fdb8729e1b1bcd73a176
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 54
        ark(
            i,
            q,
            HashInputs4(
                0x113dd55e39cdc1da330d4a620de37443fc359023527d419fdde67c8c51ceb38d,
                0x0aedd2b8f75061b641f975aa379906c682f0b5b79042e9cc499ca5eb3cea0852,
                0x0bb987d50e4cbdacee349749a05c0dfda0cbfe1e5f222bbd481ecc56ce0decf4,
                0x250767b9f4005226ecaab5ea8967fbe88557fc5b49e49bfbfef590b6b070a0cc
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 55
        ark(
            i,
            q,
            HashInputs4(
                0x1e925e995131486a437d19ea2b45d40abdc598d42512cda96bd49114d857dbc8,
                0x28114a1800ef14cb7abb50bf85fa9204a7b1a857640db27beee183baa02744c3,
                0x07be8c7eeb81d81c444c7d9d0711b293c5318186a35ebe28ab6f498b6b130ced,
                0x24df3d8a18defc5bb91da2428fe23e1cfa8fcfd02fd7ad4de4877dd1546d4ce0
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 56
        ark(
            i,
            q,
            HashInputs4(
                0x00aa6d567ddc5b34b5c7ff285fbf87d5e8472583915af63bdb031b30d284fd23,
                0x11290af7a614e4a9353687ef1ef8bbf94732c14564a12a1516351209b0048755,
                0x19b44a049dd76e71b91fb34ee381b970219f2a7c00f1950bdcd250f43f1261ff,
                0x230512420cfa2e804c2d3f84f679c6af342befe4fa432ce2311f97ca505ebe30
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 57
        ark(
            i,
            q,
            HashInputs4(
                0x13e686e00e752080aede35a9882acef3c542f200544f7d3e6dc34a9de0663510,
                0x246f2a9655a503457e7a33560307d79e0a70dc6377b27c1588acaf6faf56d707,
                0x038657413e7230cf9f6850398c525f5bc7e0526addcd34c87120be083a31dcb6,
                0x12756fbb1be74a0fb53f02e2b18f42b69ae6bb118cb86c1f038d8ad886da9bbb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 58
        ark(
            i,
            q,
            HashInputs4(
                0x0f75023a1de10320c5c29a09bd9dce6ef50457e6ca8c2c1072bb34fc76ca81fc,
                0x25fe7d315d41922a741464d26e3bd47dae7ed62aaeb39f105873dcd3bc1106d7,
                0x1d1d8854ac4fcc08b92aa935c4e5ae5318f242f5dc01871297ebfbd0cf0ee57b,
                0x0b9fda3453f383d1e8601fbcd6505bfbe776910d35ee649eaa2a26901fa50feb
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 59
        ark(
            i,
            q,
            HashInputs4(
                0x12cfd4d9401a0e6e680c5ff57298b78b4f0eb4b548b5500cf6e967615aecc962,
                0x244f9409ca616bf48bf2ecc1ff0fb69ac845e7f93b385ef74da105575886d809,
                0x1933cd0d646b9ff51482acade913eab08b645c796eb7cf977bee5a9d0ce9325b,
                0x1085b5961d9550cb7751bc5e94dba486ea43e6dc51fbd2ba255bffdbeba90903
            )
        );
        sbox_partial(i, q);
        mix(i, q);
        // round 60
        ark(
            i,
            q,
            HashInputs4(
                0x1e72c3f0a6a08c47f76faf002aab7422086cb9917b83b3708d35ad8a6dedcecb,
                0x1700157e20417bf8ecde648b960e8d4919d56e19e62772b18259b15aabec85e7,
                0x1dfac3414e9e4a6aab2dadb3e66229a0a5846c1153a8ccbb28a0aba1d187bd98,
                0x1b2ea16eaf3e7d6194703bb60883fc2ceef7f26ee6dbbf4d3035dcbc2db571b2
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 61
        ark(
            i,
            q,
            HashInputs4(
                0x0a4eb759d6cbb05b65048cf3b5479771f2174e139c0e46483226e1a040c8596b,
                0x0833b5357fcafe0b1d8520e315bad4cf10a33eceb9f6d76a61d78d19b8ac2c31,
                0x2c3c184455ee8f238db25f36f8e53441ecf65dbb8890ce6b5dc1bec397603299,
                0x1c3ffe2ce392f9583af47d9a5cee2285a705c7cb08c75dc48e787d0c3fd159f7
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 62
        ark(
            i,
            q,
            HashInputs4(
                0x21b9af9673b71cbfaa2b0ef524af2fd93c542fcedab07933633645191e2577b8,
                0x229350d44eb6f2ec6371e1490277d7935e099dd8e279085b8cd7ac1dc605310d,
                0x2761288d6f4ac17ab6862a30a4b60517f952d4428d62f52d389ddbc347efe82f,
                0x1b03ead6d18de2eb94f830c4ebaf8483626251255fd7280268f2e5adbcb641a3
            )
        );
        sbox_full(i, q);
        mix(i, q);
        // round 63
        ark(
            i,
            q,
            HashInputs4(
                0x29c784ffadd205edcb619e26df39fa73a26662904fb4c5e8614cb60a76dba7f0,
                0x263b97d88acd3a1bf4a71b3117bf0ed273251a344402f3293fe752c53ad4bd0d,
                0x303d4a3ca16229fb2da6509f4d9c6a4766879cdff13d5fd7f60cb15db997d6b1,
                0x234be29d8bec9c5c813ca39b0b8f9a7650e128db4bf082bd03ab0b1145e95cd7
            )
        );
        sbox_full(i, q);
        mix(i, q);

        return i.t1;
    }
}
