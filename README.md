### Introduction

This README provides instructions on how to compile, deploy, and interact with the `MyToken` smart contract using Remix IDE, a popular web-based Solidity development environment. The `MyToken` contract is a simple Ethereum-based token that allows you to mint and burn tokens.

### Instructions

Follow these steps to compile, deploy, and interact with the `MyToken` smart contract in Remix IDE:

### 1. Open Remix IDE

Open your web browser and navigate to Remix IDE at https://remix.ethereum.org/.

### 2. Create a New File

In Remix IDE, create a new file. Name it ["YOUR_FILE_NAME.SOL"].

### 3. Paste the Smart Contract Code

Copy and paste the provided `MyToken.sol` code into the newly created file.

### 4. Compile the Smart Contract

1. In Remix IDE, navigate to the "Solidity Compiler" tab on the left sidebar.
2. Click the "Compile MyToken.sol" button to compile the smart contract.

### 5. Deploy the Smart Contract

1. Switch to the "Deploy & Run Transactions" tab on the left sidebar.
2. Under the "Contract" section, you should see your compiled `MyToken` contract.
3. Click the "Deploy" button to deploy the contract to the selected network.


```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


   
contract MyToken {                              // public variables here
    string public tokenName = "Krishna";
    string public tokenAbbvr = "KRISH";
    uint256 public totalSupply;


    mapping(address => uint256) public balances;         // mapping variable here

    constructor() {
        totalSupply = 0;
    }

    function mint(address _address, uint256 _value) public {            // mint function
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(uint256 _value) public {                                // burn function
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}


```

### 6. Interact with the Smart Contract

After deploying the contract, you can interact with it:

### Mint Tokens

1. Click the contract instance under the "Deployed Contracts" section.
2. In the "Write" section, find the `mint` function.
3. Enter the recipient's Ethereum address and the amount of tokens you want to mint.
4. Click the "Transact" button, confirm the transaction in MetaMask, and the recipient's balance will increase.

### Burn Tokens

1. Click the contract instance under the "Deployed Contracts" section.
2. In the "Write" section, find the `burn` function.
3. Enter your Ethereum address (the one with tokens) and the amount of tokens you want to burn.
4. Click the "Transact" button, confirm the transaction in MetaMask, and your balance will decrease if you have enough tokens.

## View Token Balances

You can view token balances by accessing the `balances` mapping through the contract's public function `balances(address)`. Enter an Ethereum address and click the "Call" button to see the balance of tokens held by that address.


### Authors

Krishna Jadhav  

### License

This project is licensed under the MIT License - see the LICENSE.md file for details
