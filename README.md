## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

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
