
# IDistribution
Interface for distribution-related functionalities. It can get sources and produce a new instances out from them. It also provides metadata about the distribution.

!!! NOTICE

	It is highly recommended to keep implementation stateless, and use `immutable` variables for any state. This allows your code to be referred in distributor and respositories via ERC7744. It's also easier to reason about, and more gas efficient.

###  Distributed

Emitted when a distribution occurs.

```solidity
event Distributed(address distributor, address[] instances)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `address` | The address of the entity that performed the distribution. |
| `instances` | `address[]` | An array of addresses that were produced. |

###  instantiate

Instantiates a new instance with the given parameters.

```solidity
function instantiate(bytes data) external returns (address[] instances, bytes32 distributionName, uint256 distributionVersion)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `data` | `bytes` | The data to be used for instantiation. |
| **Output** | |
|  `instances`  | `address[]` | An array of addresses that were produced. |
|  `distributionName`  | `bytes32` | The name of the distribution. |
|  `distributionVersion`  | `uint256` | The version of the distribution. |

!!! WARNING

	It MUST emit Distributed event.

###  get

Retrieves the current distribution sources.

```solidity
function get() external view returns (address[] sources, bytes32 distributionName, uint256 distributionVersion)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `sources`  | `address[]` | An array of addresses that are used for instantiation. |
|  `distributionName`  | `bytes32` | The name of the distribution. |
|  `distributionVersion`  | `uint256` | The version of the distribution. |

###  getMetadata

```solidity
function getMetadata() external view returns (string)
```

<!--CONTRACT_END-->

