## Chronicle Foundry Template

The Chronicle Foundry Template enables users to seamlessly integrate Chronicle oracles in their Foundry-based projects. 


### Foundry Installation

**Note**

 If you are starting a new Foundry project, you might want to check out the [Foundry Installation](https://book.getfoundry.sh/getting-started/installation) and Foundry [Getting Started](https://book.getfoundry.sh/getting-started/first-steps) docs first.



### Set up your environment variables

Based on the env.example - create or update an .env file in the root directory of your project. 
Below you can find each env variable explained:

    SEPOLIA_RPC_URL - http RPC node endpoint used by Forge.
    PRIVATE_KEY - private key of an account used for deployment and interaction with the smart contracts. When using Anvil, a set of private keys for local usage is provided. Use one of these for local development.
    ETHERSCAN_API_KEY - API key for Etherscan, used for contract verification.

## Load the environment variables from .env file

```shell
$ source .env 
```


## Build the projects's smart contracts

```shell
$ forge build
```


### Test

needs to be run on a fork to work as static calls are made
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


### Deploy

Note:
If you are running a new deploy, run before deploy:

$ forge clean



```shell

$ forge create --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY src/OracleReader.sol:OracleReader


OR 

$ forge script --chain sepolia script/deploy_oracleReader.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast  --verify -vvvv
example address:  0x523A3092AF11278E9B75275d0aef84693c0c8c0b


```

### Cast

```shell
$ cast call 0x523A3092AF11278E9B75275d0aef84693c0c8c0b 'read()(uint,uint)' --rpc-url $SEPOLIA_RPC_URL
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
