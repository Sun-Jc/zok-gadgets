zok=$1

(
    cd prover
    bash script/make-pv.sh ${zok}
)
cp prover/out/${zok}/verifier.sol src/verifier/${zok}.sol