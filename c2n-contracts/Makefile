build:
	@npx hardhat compile
	@npx hardhat run --network local scripts/deployment/deploy_boba_token.js
	@npx hardhat run --network local scripts/deployment/deploy_c2n_token.js
	@npx hardhat run --network local scripts/deployment/deploy_mock_token.js
	@npx hardhat run --network local scripts/deployment/deploy_airdrop_c2n.js
	@npx hardhat run --network local scripts/deployment/deploy_singletons.js
node:
	@npx hardhat node
runtest:
	@npx hardhat test