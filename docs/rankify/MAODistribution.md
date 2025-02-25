
# MAODistribution
The contract is responsible for creating and managing DAOs and Rankify distributions.

!!! NOTICE

	This contract implements the IDistribution and CodeIndexer interfaces. It uses the Clones library for address cloning.

###  UserRankifySettings

```solidity
struct UserRankifySettings {
  uint256 principalCost;
  uint96 principalTimeConstant;
  string rankTokenURI;
  string rankTokenContractURI;
}
```

###  TokenArguments

```solidity
struct TokenArguments {
  string tokenName;
  string tokenSymbol;
}
```

###  DistributorArguments

```solidity
struct DistributorArguments {
  struct MAODistribution.TokenArguments tokenSettings;
  struct MAODistribution.UserRankifySettings rankifySettings;
}
```

###  constructor

Initializes the contract with the provided parameters and performs necessary checks.

```solidity
constructor(address trustedForwarder, address paymentToken, address beneficiary, address[] zkpVerifier, bytes32 rankTokenCodeId, bytes32 RankifyDIistributionId, bytes32 accessManagerId, bytes32 governanceERC20BaseId, string distributionName, struct LibSemver.Version distributionVersion, uint256 minParticipantsInCircle) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `trustedForwarder` | `address` | Address of the trusted forwarder for meta-transactions (WARNING: Not yet reviewed) |
| `paymentToken` | `address` | Address of the token used for payments in the system |
| `beneficiary` | `address` | Address that receives payments and fees |
| `zkpVerifier` | `address[]` |  |
| `rankTokenCodeId` | `bytes32` | Identifier for the rank token implementation in CodeIndex |
| `RankifyDIistributionId` | `bytes32` | Identifier for the Rankify distribution implementation |
| `accessManagerId` | `bytes32` | Identifier for the access manager implementation |
| `governanceERC20BaseId` | `bytes32` | Identifier for the governance token implementation |
| `distributionName` | `string` | Name identifier for this distribution |
| `distributionVersion` | `struct LibSemver.Version` | Semantic version information as LibSemver.Version struct |
| `minParticipantsInCircle` | `uint256` | Minimum number of participants in a circle |

!!! NOTICE

	Retrieves contract addresses from a contract index using the provided identifiers
	and initializes the distribution system.

!!! WARNING

	distributionName must be less then 31 bytes long to comply with ShortStrings immutable format

###  instantiate

Instantiates a new instance with the provided data.

```solidity
function instantiate(bytes data) public returns (address[] instances, bytes32 distributionName, uint256 distributionVersion)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `data` | `bytes` | The initialization data for the new instance, typeof [DistributorArguments](.././DistributorArguments). |
| **Output** | |
|  `instances`  | `address[]` | An array of addresses representing the new instances. |
|  `distributionName`  | `bytes32` | A bytes32 value representing the name of the distribution. |
|  `distributionVersion`  | `uint256` | A uint256 value representing the version of the distribution. |

!!! NOTICE

	`instances` array contents: GovernanceToken, Gov Token AccessManager, Rankify Diamond, 8x Rankify Diamond facets, RankTokenAccessManager, RankToken

###  contractURI

```solidity
function contractURI() public pure virtual returns (string)
```

###  get

Retrieves the current distribution sources.

```solidity
function get() external view returns (address[] sources, bytes32, uint256)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `sources`  | `address[]` | An array of addresses that are used for instantiation. |
|  `1`  | `bytes32` |  |
|  `2`  | `uint256` |  |

###  distributionSchema

Returns the schema of the distribution.

```solidity
function distributionSchema(struct MAODistribution.DistributorArguments args) external pure returns (struct MAODistribution.DistributorArguments)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `struct MAODistribution.DistributorArguments` | DistributorArguments The schema of the distribution. |

!!! NOTICE

	This is only needed to ensure `DistributorArguments` are provided in ABI, as it would be internal otherwise.

<!--CONTRACT_END-->

