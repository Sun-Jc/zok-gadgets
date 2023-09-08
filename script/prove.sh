#!/bin/bash
circuit_name=$1
circuit_dir="out/${circuit_name}"
proof_path=$2

tmp="$(pwd)/out/witness/${circuit_name}"

(
    rm -rf ${tmp}
    mkdir -p ${tmp}
)

wit_out_name="${tmp}/witness"

(
    cd ${circuit_dir}
    echo "2d ${wit_out_name}"
    zokrates compute-witness -a "${@:3}" --verbose -o ${wit_out_name}
    zokrates generate-proof --verbose -w ${wit_out_name} -j ../../${proof_path}
)

