zok=$1

p=out/${zok}

mkdir -p ${p}
(
    cd ${p}
    rm *
    zokrates compile -i "../../src/${zok}.zok" --verbose
    zokrates setup --verbose
    zokrates export-verifier --verbose
)