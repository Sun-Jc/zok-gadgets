
source tool/constants.sh

function deploy() {
    contractPath=$1
    forge create ${contractPath}  --json --rpc-url ${ETH_RPC_URL} --private-key ${PRIVATE_KEY} | jq .deployedTo
}

deploy ${CONTRACT_POSEIDON2}

bash tool/make-verifier.sh poseidon-merkle