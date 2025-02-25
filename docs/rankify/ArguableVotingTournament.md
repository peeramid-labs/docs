
# ArguableVotingTournament Distribution
This contract implements a diamond distribution for the Ethereum Distribution System (EDS).
        It creates and manages instances of ArguableVotingTournament, enabling decentralized
        tournament management with voting capabilities.

!!! NOTICE

	This contract follows the Diamond pattern and is designed to be used exclusively by the
	Distributor contract. It manages facets for tournament operations, voting, and game master functions.

###  ArguableTournamentAddresses

This struct helps organize the deployment of the diamond proxy system

!!! NOTICE

	Groups the addresses of all required facets for the tournament

```solidity
struct ArguableTournamentAddresses {
  address loupeFacet;
  address inspectorFacet;
  address RankifyMainFacet;
  address RankifyReqsFacet;
  address RankifyGMFacet;
  address OwnershipFacet;
}
```

###  constructor

Sets up the diamond proxy system with all required facets and initializes core components

```solidity
constructor(address initializer, bytes4 initializerSelector, string _distributionName, struct LibSemver.Version version, struct ArguableVotingTournament.ArguableTournamentAddresses addresses) public
```

!!! NOTICE

	Constructor for the ArguableVotingTournament contract

!!! WARNING

	distributionName must be less then 31 bytes long to comply with ShortStrings immutable format
	The initializer function is added as a regular facet to the Diamond Proxy.
	Since initialization is handled by the distributor contract, it's expected that
	the distributor will remove this facet after successful initialization.

###  instantiate

see Ethereum Distribution System IDistribute for interface specification.

```solidity
function instantiate(bytes) external returns (address[] instances, bytes32, uint256)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `instances`  | `address[]` | Array[8]: [diamond proxy, 8x diamond facets..] |
|  `1`  | `bytes32` | distributionName: bytes32 encoded name to be used in EIP712 signing flow |
|  `2`  | `uint256` | distributionVersion: uint256 encoded distribution version. Can be parsed to eip712 signature with EDS LibSemver |

!!! NOTICE

	// instances: 0 - diamond; 1 - DiamondLoupeFacet; 2 - EIP712InspectorFacet; 3 - RankifyInstanceMainFacet; 4 - RankifyInstanceRequirementsFacet; 5 - RankifyInstanceGameMastersFacet // 6 - OwnershipFacet

###  contractURI

```solidity
function contractURI() public pure virtual returns (string)
```

<!--CONTRACT_END-->

