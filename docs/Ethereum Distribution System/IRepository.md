
# IRepository Interface
It is intended to be implemented by contracts that manage a collection of versions of a byte code.

###  Source

Represents a source with version information, a unique identifier, and associated metadata.

| Input | Type | Description |
|:----- | ---- | ----------- |

```solidity
struct Source {
  struct LibSemver.Version version;
  bytes32 sourceId;
  bytes metadata;
}
```

###  VersionDoesNotExist

Error indicating that the specified version does not exist.

```solidity
error VersionDoesNotExist(uint256 version)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `version` | `uint256` | The version number that does not exist. |

###  ReleaseZeroNotAllowed

Error indicating that a release with a zero value is not allowed.

```solidity
error ReleaseZeroNotAllowed()
```

###  VersionExists

Error indicating that the specified version already exists.

```solidity
error VersionExists(uint256 version)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `version` | `uint256` | The version number that already exists. |

###  VersionIncrementInvalid

Error indicating that the version increment is invalid.

```solidity
error VersionIncrementInvalid(uint256 version)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `version` | `uint256` | The version number that caused the error. |

!!! NOTICE

	The version increment must be exactly one for either major, minor, or patch.

###  EmptyReleaseMetadata

```solidity
error EmptyReleaseMetadata()
```

!!! NOTICE

	Error indicating that the release metadata is empty.

###  VersionAdded

Emitted when a new version is added to the repository.

```solidity
event VersionAdded(uint256 version, bytes32 source, bytes buildMetadata)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `version` | `uint256` | The version number of the added item. |
| `source` | `bytes32` | The source identifier of the added item. |
| `buildMetadata` | `bytes` | Additional metadata related to the build. |

###  ReleaseMetadataUpdated

Emitted when the metadata of a release is updated.

```solidity
event ReleaseMetadataUpdated(uint256 version, bytes releaseMetadata)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `version` | `uint256` | The version number of the release. |
| `releaseMetadata` | `bytes` | The metadata associated with the release. |

###  updateReleaseMetadata

Updates the metadata for a specific release version.

```solidity
function updateReleaseMetadata(struct LibSemver.Version version, bytes releaseMetadata) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `version` | `struct LibSemver.Version` | The version of the release to update. |
| `releaseMetadata` | `bytes` | The new metadata to associate with the release. |

!!! NOTICE

	It MUST emit `ReleaseMetadataUpdated` event.

###  repositoryName

Retrieves the name of the repository.

```solidity
function repositoryName() external view returns (bytes32)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `bytes32` | The name of the repository as a bytes32 value. |

###  newRelease

Creates a new release for the given source ID.

```solidity
function newRelease(bytes32 sourceId, bytes metadata, struct LibSemver.Version version) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `sourceId` | `bytes32` | The unique identifier of the source. |
| `metadata` | `bytes` | The metadata associated with the release. |
| `version` | `struct LibSemver.Version` | The semantic version of the new release. |

!!! NOTICE

	It MUST emit `VersionAdded` event.

###  getLatest

Retrieves the latest source.

```solidity
function getLatest() external view returns (struct IRepository.Source)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `struct IRepository.Source` | The requested source |

###  get

Retrieves a specific item from the repository.

```solidity
function get(struct LibSemver.Version baseVersion, enum LibSemver.requirements requirement) external view returns (struct IRepository.Source)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `baseVersion` | `struct LibSemver.Version` | the base of required version |
| `requirement` | `enum LibSemver.requirements` | the requirement of the version |
| **Output** | |
|  `0`  | `struct IRepository.Source` | The requested `Source`. |

<!--CONTRACT_END-->

