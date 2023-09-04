circuit_name=$1

src_zok="$(pwd)/src/${circuit_name}.zok"
out_dir="out/${circuit_name}"

mkdir -p ${out_dir}
(
    cd ${out_dir}
    
    # clean
    rm *

    # compile
    zokrates compile -i "${src_zok}" --verbose --debug 

    # setup
    zokrates setup --verbose

    # compute-witness
    zokrates export-verifier --verbose
)