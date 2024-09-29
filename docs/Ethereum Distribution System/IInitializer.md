
# IInitializer
Interface for the Initializer contract. This is intended to be used
as distribution initializer within the Distributor contract.

###  Initialized

```solidity
event Initialized(address container, bytes32 codeHash)
```

###  initializationFailed

```solidity
error initializationFailed(bytes32 id, string reason)
```

###  initialize

Initializes the contract with necessary parameters.

```solidity
function initialize(bytes32 distributionId, address[] instances, bytes32 distributionName, uint256 distributionVersion, bytes args) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributionId` | `bytes32` | The ID of the distribution being initialized |
| `instances` | `address[]` | The addresses of the instances being initialized |
| `distributionName` | `bytes32` | The name of the distribution |
| `distributionVersion` | `uint256` | The version of the distribution |
| `args` | `bytes` | The additional arguments to be used for initialization |

!!! NOTICE

	This function should be delegete-called by the distributor contract.

<!--CONTRACT_END-->

