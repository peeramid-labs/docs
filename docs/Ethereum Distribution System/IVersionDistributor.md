
# 

###  InvalidRepository

```solidity
error InvalidRepository(contract IRepository repository)
```

###  RepositoryAlreadyExists

```solidity
error RepositoryAlreadyExists(contract IRepository repository)
```

###  VersionOutdated

```solidity
error VersionOutdated(contract IRepository repository, uint256 version)
```

###  InvalidInstance

```solidity
error InvalidInstance(address instance)
```

###  VersionedDistributionAdded

```solidity
event VersionedDistributionAdded(contract IRepository repository, uint256 version, enum LibSemver.requirements requirement, address initializer)
```

###  VersionChanged

```solidity
event VersionChanged(address repository, uint256 oldVersion, uint256 newVersion)
```

###  RequirementChanged

```solidity
event RequirementChanged(contract IRepository repository, enum LibSemver.requirements oldRequirement, enum LibSemver.requirements newRequirement)
```

###  VersionedDistributionRemoved

```solidity
event VersionedDistributionRemoved(contract IRepository repository)
```

###  Instantiated

```solidity
event Instantiated(address repository, bytes argsHash)
```

###  addVersionedDistribution

```solidity
function addVersionedDistribution(contract IRepository repository, struct LibSemver.Version version, enum LibSemver.requirements requirement, address initializer) external
```

###  changeRequirement

```solidity
function changeRequirement(contract IRepository repository, struct LibSemver.Version version, enum LibSemver.requirements requirement) external
```

###  getVersionedDistributions

```solidity
function getVersionedDistributions() external view returns (address[] repositories)
```

###  getVersionedDistributionURI

```solidity
function getVersionedDistributionURI(contract IRepository repository) external view returns (string)
```

###  instantiate

```solidity
function instantiate(contract IRepository repository, bytes args) external returns (address[], bytes32, uint256)
```

###  removeVersionedDistribution

```solidity
function removeVersionedDistribution(contract IRepository repository) external
```

<!--CONTRACT_END-->

