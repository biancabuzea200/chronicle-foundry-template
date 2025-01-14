## Chronicle Foundry Template

The Chronicle Foundry Template enables users to seamlessly integrate Chronicle oracles in their Foundry-based projects.


### Foundry Installation

**Note**

If you are new to Foundry, you might want to check out the [Foundry Installation](https://book.getfoundry.sh/getting-started/installation) and Foundry [Getting Started](https://book.getfoundry.sh/getting-started/first-steps) docs first.


### Set up your environment variables

Based on the `env.example` file, create or update an `.env` file in the root directory of your project.
Below you can find an explanation of each variable:

```
SEPOLIA_RPC_URL   - http RPC node endpoint used by Forge.
PRIVATE_KEY       - private key of an account used for deployment and interaction with the smart contracts. When using Anvil, a set of private keys for local usage is provided. Use one of these for local development.
ETHERSCAN_API_KEY - API key for Etherscan, used for contract verification.
```


## Load the environment variables from .env file

```shell
$ source .env
```


## Build the projects's smart contracts

```shell
$ forge build
```


### Test

Needs to be run on a fork to work as static calls are made
```shell
$ forge test --fork-url $SEPOLIA_RPC_URL --fork-block-number 7484876
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```


## Deploy

Note that it is recommended to run the following command before each deploy:
```shell
$ forge clean
```

Afterwards, just run:
```shell
$ forge create --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY src/OracleReader.sol:OracleReader
```

You can also deploy using the [`script/deploy_oracleReader.s.sol`](./script/deploy_oracleReader.s.sol) script via:
```shell
$ forge script --chain sepolia script/deploy_oracleReader.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast  --verify -vvvv
```


### Reading your oracle

```shell
$ cast call <your oracle address> 'read()(uint,uint)' --rpc-url $SEPOLIA_RPC_URL
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
