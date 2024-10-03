# SimpleStorage and StorageFactory Contracts

This repository contains a set of smart contracts written in Solidity for managing a simple storage system on the Ethereum blockchain. The main components include the `SimpleStorage`, `StorageFactory`, and `DataStorage5` contracts, each demonstrating basic concepts of data storage and contract interaction.

## Contracts Overview

### 1. SimpleStorage
The `SimpleStorage` contract allows users to:
- Store a favorite number and associate it with a name.
- Retrieve the stored favorite number.
- Maintain a list of people and their favorite numbers using a struct.

#### Key Features:
- **Store a number**: Users can store a favorite number.
- **Retrieve a number**: Users can retrieve their stored favorite number.
- **Add person**: Users can add a name and favorite number to a public list.

### 2. StorageFactory
The `StorageFactory` contract serves as a factory for creating multiple instances of `SimpleStorage`. This allows for:
- The creation of new `SimpleStorage` contracts.
- Storing and retrieving numbers from specific `SimpleStorage` instances.

#### Key Features:
- **Create Storage Contract**: Deploys a new `SimpleStorage` contract.
- **Store in Contract**: Allows users to store a number in a specified `SimpleStorage` instance.
- **Get from Contract**: Allows users to retrieve a number from a specified `SimpleStorage` instance.

### 3. DataStorage5
The `DataStorage5` contract extends `SimpleStorage` and overrides the `store` function to add a fixed value (5) to the stored number. This demonstrates contract inheritance and function overriding.

#### Key Features:
- **Override Store Function**: Changes the behavior of the `store` function to always add 5 to the input number before storing it.

## Prerequisites
- Solidity version ^0.8.18
- Ethereum development environment (e.g., Truffle, Hardhat)

## Installation
Clone this repository and use a Solidity development environment to compile and deploy the contracts.

```bash
git clone https://github.com/yourusername/repo.git
cd repo
```

## Usage
1. Deploy the `StorageFactory` contract.
2. Use `createSimpleStorageContract` to deploy new `SimpleStorage` instances.
3. Use `sfStore` and `sfGet` to interact with the deployed contracts.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing
Feel free to submit issues, fork the repository, and make pull requests for improvements!
