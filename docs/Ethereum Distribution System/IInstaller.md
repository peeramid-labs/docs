
# IInstaller Interface
Enables target smart account to interact with Distributor contract ecosystem.

###  NotAnInstance

```solidity
error NotAnInstance(address instance)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address that was checked and found not to be an instance. |

!!! NOTICE

	Error indicating that the provided address is not a valid instance.

###  InvalidDistributor

Error indicating that the provided distributor is invalid.

```solidity
error InvalidDistributor(contract IDistributor distributor)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The distributor that is considered invalid. |

###  InvalidTarget

```solidity
error InvalidTarget(address target)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `target` | `address` | The address that is considered invalid. |

!!! NOTICE

	Error indicating that the provided target address is not the smart account installer serves.

###  alreadyAllowed

Error indicating that the specified distributor is already allowed.

```solidity
error alreadyAllowed(contract IDistributor distributor)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The distributor that is already allowed. |

###  DistributionIsNotPermitted

Error indicating that a distribution is not permitted (not installed).

```solidity
error DistributionIsNotPermitted(contract IDistributor distributor, bytes32 distributionId)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor containing the distribution. |
| `distributionId` | `bytes32` | The unique identifier of the distribution. |

###  DissalowDistOnWhitelistedDistributor

Error indicating that distributor is whitelisted and hence it is not possible to selectively dissalow distriributions.

```solidity
error DissalowDistOnWhitelistedDistributor(contract IDistributor distributor, bytes32 distributionId)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The whitelisted distributor. |
| `distributionId` | `bytes32` | The ID of the distribution that was attempted to dissalow. |

!!! NOTICE

	If getting this error: consider first removing distributor from whitelist, and then dissalowing the distribution.

###  DistributorWhitelisted

```solidity
event DistributorWhitelisted(contract IDistributor distributor)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor that has been whitelisted. |

!!! NOTICE

	Emitted when a distributor is whitelisted.
	Any distribution of the whitelisted distributor MUST be allowed to be installed.

###  DistributorWhitelistRevoked

Emitted when a distributor is removed from the whitelist.

```solidity
event DistributorWhitelistRevoked(contract IDistributor distributor)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor that was revoked. |

!!! WARNING

	After removal, the distributions that were allowed by id are still allowed.

###  DistributionAllowed

```solidity
event DistributionAllowed(contract IDistributor distributor, bytes32 distributionId)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor that is allowed. |
| `distributionId` | `bytes32` | The unique identifier of the distribution. |

!!! NOTICE

	Emitted when a distribution is allowed by the installer.

###  DistributionDisallowed

```solidity
event DistributionDisallowed(contract IDistributor distributor, bytes32 distributionId)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor that is disallowed. |
| `distributionId` | `bytes32` | The unique identifier of the distribution that is disallowed. |

!!! NOTICE

	Emitted when a distribution is disallowed by the installer.

###  allowDistribution

Allows a specified distributor to distribute a given distribution ID.

```solidity
function allowDistribution(contract IDistributor distributor, bytes32 distributionId) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor hosting a distribution Id. |
| `distributionId` | `bytes32` | The ID of the distribution to be allowed. |

!!! NOTICE

	MUST emit `DistributionAllowed` event.

###  disallowDistribution

Disallows a specific distribution from a given distributor.

```solidity
function disallowDistribution(contract IDistributor distributor, bytes32 distributionId) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor contract. |
| `distributionId` | `bytes32` | The unique identifier of the distribution to be disallowed. |

!!! NOTICE

	MUST emit `DistributionDisallowed` event.

###  whitelistedDistributions

Retrieves the list of whitelisted distributions for a given distributor.

```solidity
function whitelistedDistributions(contract IDistributor distributor) external view returns (bytes32[])
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor to query. |
| **Output** | |
|  `0`  | `bytes32[]` | An array of bytes32 representing the whitelisted distributions. |

!!! NOTICE

	If the distributor is whitelisted, all distributions are allowed.

###  whitelistDistributor

Adds a distributor to the whitelist.

```solidity
function whitelistDistributor(contract IDistributor distributor) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor to be whitelisted. |

!!! NOTICE

	After whitelisting, all distributions of the distributor are allowed. Must emit `DistributorWhitelisted` event.

###  revokeWhitelistedDistributor

Revokes the whitelisted status of a given distributor.

```solidity
function revokeWhitelistedDistributor(contract IDistributor distributor) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor to be revoked. |

!!! NOTICE

	After revoking, the distributions that were allowed by id are still allowed. Must emit `DistributorWhitelistRevoked` event.

###  isDistributor

Checks if the given address is a valid distributor.

```solidity
function isDistributor(contract IDistributor distributor) external view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The address of the distributor to check. |
| **Output** | |
|  `0`  | `bool` | bool Returns true if the address is a valid distributor, otherwise false. |

###  getWhitelistedDistributors

Retrieves the list of whitelisted distributor addresses.

```solidity
function getWhitelistedDistributors() external view returns (address[])
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `address[]` | An array of addresses that are whitelisted as distributors. |

###  Installed

```solidity
event Installed(address instance, bytes32 distributionId, bytes32 permissions, bytes args)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address of the installed instance. |
| `distributionId` | `bytes32` | The identifier of the distribution. |
| `permissions` | `bytes32` | The permissions associated with the installation. |
| `args` | `bytes` | Additional arguments related to the installation. |

!!! NOTICE

	Emitted when an instance is installed.
	MUST be emitted for every new instance installed via `install` function.

###  Uninstalled

```solidity
event Uninstalled(address instance)
```

###  install

Installs a new instance with the given distributor, distribution ID, and arguments.

```solidity
function install(contract IDistributor distributor, bytes32 distributionId, bytes args) external payable returns (uint256 instanceId)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `distributor` | `contract IDistributor` | The distributor contract to be used for the installation. |
| `distributionId` | `bytes32` | The unique identifier for the distribution. |
| `args` | `bytes` | Additional arguments required for the installation process. |
| **Output** | |
|  `instanceId`  | `uint256` | The unique identifier of the newly installed instance. |

!!! NOTICE

	MUST emit `Installed` event per installed instance. MUST revert if the distributor is not whitelisted or the distribution is not allowed. MUST revert if the distributor is not a valid distributor.
	After succesfull installation ERC77446 hooks SHALL NOT revert if called by target, specifying active instance in `sender` field.

###  uninstall

Uninstalls an instance with the given ID.

```solidity
function uninstall(uint256 instanceId) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instanceId` | `uint256` | The unique identifier of the instance to be uninstalled. |

!!! NOTICE

	MUST emit `Uninstalled` event per uninstalled instance. MUST revert if the instance is not installed.
	After succesfull uninstallation ERC77446 hooks SHALL revert if called by target, specifying uninstalled instance in `sender` field.

###  getInstance

Retrieves the contracts associated with a specific instance.

```solidity
function getInstance(uint256 instanceId) external view returns (address[] instaneContracts)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instanceId` | `uint256` | The unique identifier of the instance. |
| **Output** | |
|  `instaneContracts`  | `address[]` | An array of addresses representing the contracts of the instance. |

###  getInstancesNum

Retrieves the number of instances.

```solidity
function getInstancesNum() external view returns (uint256)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `uint256` | The total number of instances as a uint256. |

!!! NOTICE

	this number SHALL NOT decrease after uninstallation.

###  isInstance

Checks if the given address is an active instance.

```solidity
function isInstance(address instance) external view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address to check. |
| **Output** | |
|  `0`  | `bool` | bool True if the address is an instance, false otherwise. |

###  distributorOf

Returns the distributor associated with a given instance.

```solidity
function distributorOf(address instance) external view returns (contract IDistributor)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `instance` | `address` | The address of the instance for which the distributor is being queried. |
| **Output** | |
|  `0`  | `contract IDistributor` | The distributor associated with the specified instance. |

###  target

Retrieves the address of the target contract.

```solidity
function target() external view returns (address)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `address` | The address of the target contract. |

<!--CONTRACT_END-->

