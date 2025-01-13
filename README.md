## Chronicle Foundry Template


### Set upyour environment variables

Based on the env.example - create or update an .env file in the root directory of your project. 
Below you can find each env variable explained:

    SEPOLIA_RPC_URL - RPC node http endpoint used by Forge
    PRIVATE_KEY - private key of an account used for deployment and interaction with the smart contracts. When using Anvil, a set of private keys for local usage is provided. Use one of these for local development.
    ETHERSCAN_API_KEY - API key for Etherscan, used for contract verification


## Export the environment variables

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
