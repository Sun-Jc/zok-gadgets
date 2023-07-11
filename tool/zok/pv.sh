zok=$1

p=zok-out/${zok}

mkdir -p ${p}
(
    cd ${p}
    rm *
    zokrates compile -i "../../prover/${zok}.zok" --verbose
    zokrates setup --verbose
    zokrates export-verifier --verbose
)

cp ${p}/verifier.sol src/verifier/${zok}.sol