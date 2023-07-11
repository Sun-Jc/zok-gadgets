source .envrc
export CONTRACT_POSEIDON2="src/verifier/poseidon-2.sol:Verifier"
export CONTRACT_POSEIDONMERKLE="src/verifier/poseidon-merkle.sol:Verifier"

# deploy:
	# forge script script/DeployAll.s.sol --broadcast --json --rpc-url $$ETH_RPC_URL --private-key $$PRIVATE_KEY 
	# forge create ${CONTRACT_POSEIDON2}  --json --rpc-url ${ETH_RPC_URL} --private-key ${PRIVATE_KEY}

# update-abis:
# 	bash tool/export-abi.sh src/verifier/poseidon-2.sol:Verifier verifier-client/src/abi/poseidon-2.json