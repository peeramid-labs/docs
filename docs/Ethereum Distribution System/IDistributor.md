
# IDistributor Interface
Defines the standard functions for a distributor contract.

!!! NOTICE

	If you want to use [IRepository](.././IRepository) for versioned distributions, use [IVersionDistributor](.././IVersionDistributor) interface.

###  InvalidVersionRequested

```solidity
error InvalidVersionRequested(bytes32 distributionId, string version)
```

###  InvalidRepository

```solidity
error InvalidRepository(address repository)
```

###  RepositoryAlreadyExists

```solidity
error RepositoryAlreadyExists(address repository)
```

###  VersionOutdated

```solidity
error VersionOutdated(bytes32 distributionId, string version)
```

###  InvalidInstance

```solidity
error InvalidInstance(address instance)
```

###  UnversionedDistribution

```solidity
error UnversionedDistribution(bytes32 distributionId)
```

###  VersionChanged

Emitted when the version of the distributor is changed.

```solidity
event VersionChanged(bytes32 distributionId, struct LibSemver.VersionRequirement newRequirement, struct LibSemver.VersionRequirement newRequirementData)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributionId` | `bytes32` | The unique identifier of the distribution. |
| `newRequirement` | `struct LibSemver.VersionRequirement` | The new version requirement (hashed for indexing). |
| `newRequirementData` | `struct LibSemver.VersionRequirement` | The new version requirement data. |

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

###  Instantiated

Event emitted when a new distribution is instantiated.

```solidity
event Instantiated(bytes32 distributionId, uint256 newInstanceId, uint256 version, address[] instances, bytes args)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributionId` | `bytes32` | The unique identifier of the distribution. |
| `newInstanceId` | `uint256` | The unique identifier of the instance. |
| `version` | `uint256` | The version of the distribution, taken either from IDistribution or from IRepository. |
| `instances` | `address[]` | The addresses of the instances that were created. |
| `args` | `bytes` | The arguments that were used for instantiation. |

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
event DistributionAdded(bytes32 id, address distribution, address initializer)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution that was added. |
| `distribution` | `address` | The address of the distribution that was added. |
| `initializer` | `address` | The address of the initializer for the distribution. |

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

Adds a new distribution with the specified distributor ID and initializer address.

```solidity
function addDistribution(bytes32 distributorId, address initializer) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributorId` | `bytes32` | The unique identifier for the distributor. |
| `initializer` | `address` | The address of the initializer for the distribution. |

!!! WARNING

	If initializer is provided, it will DELEGATECALL to the initializer. Otherwise, instantiation arguments will be passed to the distribution for self-initialization. Initializer contract MUST be trusted by the distributor.

###  removeDistribution

Removes a distribution identified by the given distributorId.

```solidity
function removeDistribution(bytes32 distributorId) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributorId` | `bytes32` | The unique identifier of the distribution to be removed. |

###  getDistributionId

Retrieves the distribution ID associated with a given instance address.

```solidity
function getDistributionId(address instance) external view returns (bytes32)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address of the instance for which the distribution ID is being requested. |
| **Output** | |
|  `0`  | `bytes32` | The distribution ID as a bytes32 value. |

###  getInstanceId

Retrieves the unique identifier for a given instance address.

```solidity
function getInstanceId(address instance) external view returns (uint256)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address of the instance whose ID is to be retrieved. |
| **Output** | |
|  `0`  | `uint256` | The unique identifier (uint256) associated with the specified instance address. |

###  addDistribution

Adds a new versioned distribution to the repository.

```solidity
function addDistribution(contract IRepository repository, address initializer, struct LibSemver.VersionRequirement requirement) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `repository` | `contract IRepository` | The repository to which the distribution will be added. |
| `initializer` | `address` | The address that initializes the distribution. |
| `requirement` | `struct LibSemver.VersionRequirement` | The version requirements for the distribution. |

!!! WARNING

	If initializer is provided, it will DELEGATECALL to the initializer. Otherwise, instantiation arguments will be passed to the distribution for self-initialization. Initializer contract MUST be trusted by the distributor.

###  changeVersion

Changes the version requirement for a specific distribution.

```solidity
function changeVersion(bytes32 distributionId, struct LibSemver.VersionRequirement newRequirement) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributionId` | `bytes32` | The unique identifier of the distribution whose version requirement is to be changed. |
| `newRequirement` | `struct LibSemver.VersionRequirement` | The new version requirement to be set for the distribution. |

###  addNamedDistribution

Adds a new versioned distribution to the repository.

```solidity
function addNamedDistribution(bytes32 name, bytes32 distributorId, address initializer) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `name` | `bytes32` | The name of the distribution. |
| `distributorId` | `bytes32` | The unique identifier of the distributor. |
| `initializer` | `address` | The address that initializes the distribution. |

<!--CONTRACT_END-->

