# Commands
This works with lambda_ethereum_rust L2 node.

### Deploying contracts that interact with CALL

This set of commands deploys caller and target contract. Then sends a transaction to the Caller contract, that will eventually call the Target contract.

```bash
forge create --rpc-url localhost:1729 --private-key 0x63b8139bbf84a5a65613e544be239f59f884434462598bd8bfe9f2c9045aa336 Caller;
forge create --rpc-url localhost:1729 --private-key 0x63b8139bbf84a5a65613e544be239f59f884434462598bd8bfe9f2c9045aa336 Target;
cast send --private-key 0x63b8139bbf84a5a65613e544be239f59f884434462598bd8bfe9f2c9045aa336 --gas-limit 1000000 --rpc-url http://localhost:1729 0x22d4029Da0C0ebE2214E0f1Dbc71757f1C453Af8 "callSetValue(address,uint)" "0xF52A5DE525D4AFc71B71F9cf3DBc21e2b5DfE482" "42"
```

