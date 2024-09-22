
# Artistic Token (ART)

## Description
Artistic Token is an ERC721 NFT contract that allows users to mint unique non-fungible tokens. This project demonstrates how to create and manage NFTs on the Ethereum blockchain. It is designed as a beginner project to help understand the fundamentals of smart contract development.

## Features
- Mint unique NFTs
- Safe minting function
- Custom base URI for token metadata
- Etherscan verification for contract transparency

## Getting Started

### Prerequisites
- Node.js
- Foundry (Forge)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   ```
2. Navigate to the project directory:
   ```bash
   cd your-repo-name
   ```
3. Install Foundry:
   ```bash
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```
## Testing

### Running Tests
To ensure the functionality of your NFT contract, you can write and run basic tests using Foundry. Here’s how:

1. **Set Up Your Testing Environment**
   Make sure you have all necessary dependencies installed by running:
   ```bash
   forge install

### Deployment
1. Deploy the contract using Forge:
   ```bash
   forge create --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> src/NFT.sol:NFT
   ```

### Verification
After deploying, you can verify your contract on Etherscan using the following command:
```bash
forge verify-contract <YOUR_CONTRACT_ADDRESS> src/NFT.sol:NFT --network <YOUR_NETWORK>
```

### Usage
After deploying, you can mint an NFT by calling the `mintNFT` function with the recipient's address and a unique token ID.

## License
This project is licensed under the MIT License.

## Acknowledgments
- OpenZeppelin for the ERC721 implementation.
- IPFS for storing NFT metadata.
- Etherscan for contract verification.
```

Feel free to modify any sections further to match your project specifics!