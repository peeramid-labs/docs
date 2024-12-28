
# Initialized Diamond Proxy Distribution
This contract is EDS compatible factory for diamond proxies

!!! NOTICE

	This allows to store immutable initializer logic for a cloned diamond proxy

###  get

Retrieves the current distribution sources.

```solidity
function get() public view virtual returns (address[], bytes32 name, uint256 version)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `address[]` |  |
|  `name`  | `bytes32` |  |
|  `version`  | `uint256` |  |

###  contractURI

```solidity
function contractURI() public pure virtual returns (string)
```

<!--CONTRACT_END-->

