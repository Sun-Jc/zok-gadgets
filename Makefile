deploy:
	forge script script/DeployAll.s.sol --broadcast --json --rpc-url $$ETH_RPC_URL --private-key $$PRIVATE_KEY 
	forge create src/verifier/poseidon-2.sol:Verifier --json --rpc-url $$ETH_RPC_URL --private-key $$PRIVATE_KEY 
	forge create src/verifier/poseidon-5.sol:Verifier --json --rpc-url $$ETH_RPC_URL --private-key $$PRIVATE_KEY 

update-abis:
	bash tool/export-abi.sh src/verifier/poseidon-2.sol:Verifier verifier-client/src/abi/poseidon-2.json
	bash tool/export-abi.sh src/verifier/poseidon-5.sol:Verifier verifier-client/src/abi/poseidon-5.json