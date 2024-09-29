
# IDistributor Interface
Defines the standard functions for a distributor contract.

!!! NOTICE

	If you want to use [IRepository](.././IRepository) for versioned distributions, use [IVersionDistributor](.././IVersionDistributor) interface.

###  DistributionNotFound

Error indicating that the distribution with the specified ID was not found.

```solidity
error DistributionNotFound(bytes32 id)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution that was not found. |

###  DistributionExists

Error indicating that a distribution with the specified ID already exists.

```solidity
error DistributionExists(bytes32 id)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution that already exists. |

###  InitializerNotFound

Error indicating that the initializer for the distribution was not found.

```solidity
error InitializerNotFound(bytes32 id)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution that was not found. |

###  InvalidInstance

Error indicating that the instance is invalid.

```solidity
error InvalidInstance(address instance)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address of the instance that is considered invalid. |

###  Instantiated

Event emitted when a new distribution is instantiated.

```solidity
event Instantiated(bytes32 distributionId, uint256 instanceId, bytes argsHash, address[] instances)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributionId` | `bytes32` | The unique identifier of the distribution. |
| `instanceId` | `uint256` | The unique identifier of the instance. |
| `argsHash` | `bytes` | The hash of the arguments used to instantiate the distribution. |
| `instances` | `address[]` | The addresses of the instances that were created. |

!!! NOTICE

	It MUST emit when [IDistributor#instantiate](.././IDistributor#instantiate) is called.

###  DistributionRemoved

Event emitted when a distribution is removed.

```solidity
event DistributionRemoved(bytes32 id)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution that was removed. |

!!! NOTICE

	It MUST emit when [IDistributor#removedistribution](.././IDistributor#removedistribution) is called.

###  DistributionAdded

Event emitted when a distribution is added.

```solidity
event DistributionAdded(bytes32 id, address initializer)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution that was added. |
| `initializer` | `address` | The address of the initializer that was added. |

!!! NOTICE

	It MUST emit when [IDistributor#adddistribution](.././IDistributor#adddistribution) is called.

###  getDistributions

Retrieves the unique identifiers of all distributions.

```solidity
function getDistributions() external view returns (bytes32[] distributorIds)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `distributorIds`  | `bytes32[]` | An array of unique identifiers of all distributions. |

###  getDistributionURI

Retrieves the URI of the distribution.

```solidity
function getDistributionURI(bytes32 distributorId) external view returns (string)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributorId` | `bytes32` | The unique identifier of the distribution. |
| **Output** | |
|  `0`  | `string` | uri The URI of the distribution. |

###  instantiate

Instantiates a new instance with the given distributor ID and arguments.

```solidity
function instantiate(bytes32 distributorId, bytes args) external returns (address[], bytes32 distributionName, uint256 distributionVersion)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributorId` | `bytes32` | The unique identifier of the distributor. |
| `args` | `bytes` | The arguments to be used for instantiation. |
| **Output** | |
|  `0`  | `address[]` | instances The addresses of the instances that were created. |
|  `distributionName`  | `bytes32` | The name of the distribution. |
|  `distributionVersion`  | `uint256` | The version of the distribution. |

!!! NOTICE

	It MUST emit [Instantiated](.././Instantiated) event.

###  addDistribution

```solidity
function addDistribution(bytes32 distributorId, address initializer) external
```

###  removeDistribution

```solidity
function removeDistribution(bytes32 distributorId) external
```

###  getDistributionId

```solidity
function getDistributionId(address instance) external view returns (bytes32)
```

###  getInstanceId

```solidity
function getInstanceId(address instance) external view returns (uint256)
```

<!--CONTRACT_END-->

