# Number Guessing Game (Blockchain-Based)

## Description
This is a simple blockchain-based number guessing game built using **Solidity** for the smart contract and **Web3.js** for interacting with the Ethereum blockchain. Players guess a number, and if they guess correctly, they win the contract's balance as a prize.

## Features
- Smart contract deployed on Ethereum
- Players submit a guess with Ether
- If correct, the player wins the contract balance
- Owner can reset the game with a new number

## Technologies Used
- **Solidity** (Smart contract development)
- **Web3.js** (JavaScript library for blockchain interaction)
- **Node.js** (Running the JavaScript script)

## Installation
### 1. Clone the Repository
```sh
git clone https://github.com/yourusername/number-guessing-game.git
cd number-guessing-game
```

### 2. Install Dependencies
```sh
npm install web3 dotenv
```

### 3. Deploy the Smart Contract
- Use **Remix IDE** or **Hardhat** to deploy `NumberGuessingGame.sol`
- Note the **contract address** after deployment

### 4. Configure Environment Variables
Create a `.env` file and add:
```
INFURA_PROJECT_ID=your_infura_project_id
PRIVATE_KEY=your_wallet_private_key
CONTRACT_ADDRESS=deployed_contract_address
```

### 5. Run the Game
```sh
node index.js
```

## Usage
1. **Set a Secret Number**: Owner sets a secret number in the contract.
2. **Make a Guess**: Players send ETH and a number guess.
3. **Win or Lose**: If correct, the player wins all ETH in the contract.
4. **Reset the Game**: The owner can set a new secret number.

## Smart Contract Functions
- `setSecretNumber(uint256 _number)`: Sets the secret number (owner only)
- `guess(uint256 _guess) payable`: Players submit a guess with ETH
- `resetGame(uint256 _newSecret)`: Resets the game (owner only)

## License
This project is licensed under the MIT License.

## Author
- **Your Name**

## Contributing
Pull requests are welcome! Please open an issue first to discuss changes.

Contract Address : 0x25d314C8CA3db2aa1823bE0ab41526DCCa6Dc73A
