
# DAODistributor
This contract is a distributor for Peeramid Labs.
It is designed to handle the distribution logic specific to Peeramid Labs.
The contract leverages access control mechanisms to ensure that only authorized
users can perform certain actions.

###  constructor

```solidity
constructor(address defaultAdmin, contract IERC20 token, uint256 defaultCost) public
```

###  addDistribution

Adds a new distribution with the given identifier and initializer address.

```solidity
function addDistribution(bytes32 id, address initializer) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier for the distribution. |
| `initializer` | `address` | The address that initializes the distribution. |

!!! NOTICE

	This function can only be called by an account with the `DEFAULT_ADMIN_ROLE`.

###  setInstantiationCost

Sets instantiation cost on a specific instantiation id

```solidity
function setInstantiationCost(bytes32 id, uint256 cost) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | distributors id |
| `cost` | `uint256` | cost of instantiation |

###  instantiate

Instantiates a new contract with the given identifier and arguments.

```solidity
function instantiate(bytes32 id, bytes args) external returns (address[] srcs, bytes32 name, uint256 version)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier for the contract to be instantiated. |
| `args` | `bytes` | The calldata arguments required for the instantiation process. |
| **Output** | |
|  `srcs`  | `address[]` | An array of instantiated infrastructure |
|  `name`  | `bytes32` | The name of the instantiated distribution. |
|  `version`  | `uint256` | The version number of the instantiated distribution. |

###  removeDistribution

Removes a distribution entry identified by the given ID.

```solidity
function removeDistribution(bytes32 id) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `bytes32` | The unique identifier of the distribution entry to be removed. |

!!! NOTICE

	This function can only be called by an account with the `DEFAULT_ADMIN_ROLE`.

###  supportsInterface

This function checks if the contract implements the interface defined by ERC165

```solidity
function supportsInterface(bytes4 interfaceId) public view virtual returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `interfaceId` | `bytes4` | The interface identifier, as specified in ERC-165. |
| **Output** | |
|  `0`  | `bool` | `true` if the contract implements `interfaceId` and `interfaceId` is not 0xffffffff, `false` otherwise. |

###  changeVersion

Changes the version requirement for a specific distribution.

```solidity
function changeVersion(bytes32 distributionId, struct LibSemver.VersionRequirement newRequirement) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributionId` | `bytes32` | The unique identifier of the distribution whose version requirement is to be changed. |
| `newRequirement` | `struct LibSemver.VersionRequirement` | The new version requirement to be set for the distribution. |

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

