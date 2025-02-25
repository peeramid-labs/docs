
# 

###  poseidon

```solidity
function poseidon(bytes32[5] inputs) external view returns (bytes32)
```

<!--CONTRACT_END-->

# 

###  poseidon

```solidity
function poseidon(bytes32[6] inputs) external view returns (bytes32)
```

<!--CONTRACT_END-->

# 

###  poseidon

```solidity
function poseidon(bytes32[2] inputs) external view returns (bytes32)
```

<!--CONTRACT_END-->

# RankifyInstanceGameMastersFacet
Facet handling game master functionality for Rankify instances

!!! NOTICE

	Implements game master specific operations like vote submission and game management

###  ballotIntegrityCheckFailed

```solidity
error ballotIntegrityCheckFailed(bytes32 ballotHash, bytes32 ballotHashFromVotes)
```

###  OverTime

```solidity
event OverTime(uint256 gameId)
```

###  ProposalScore

```solidity
event ProposalScore(uint256 gameId, uint256 turn, string proposalHash, string proposal, uint256 score)
```

###  TurnEnded

```solidity
event TurnEnded(uint256 gameId, uint256 turn, address[] players, uint256[] scores, string[] newProposals, uint256[] proposerIndices, uint256[][] votes)
```

###  LastTurn

```solidity
event LastTurn(uint256 gameId)
```

###  GameOver

```solidity
event GameOver(uint256 gameId, address[] players, uint256[] scores)
```

###  ProposalSubmitted

```solidity
event ProposalSubmitted(uint256 gameId, uint256 turn, address proposer, uint256 commitment, string encryptedProposal, bytes gmSignature, bytes proposerSignature)
```

###  ProposalParams

gmSignature and voterSignature are ECDSA signatures for verification

| Input | Type | Description |
|:----- | ---- | ----------- |

!!! NOTICE

	Represents a proposal for a game.

```solidity
struct ProposalParams {
  uint256 gameId;
  string encryptedProposal;
  uint256 commitment;
  address proposer;
  bytes gmSignature;
  bytes proposerSignature;
}
```

###  VoteSubmitted

```solidity
event VoteSubmitted(uint256 gameId, uint256 turn, address player, string sealedBallotId, bytes gmSignature, bytes voterSignature, bytes32 ballotHash)
```

###  BatchProposalReveal

permutationCommitment must be poseidon(sponge(nextTurnPermutation), nullifier). For sponge implementation see poseidonSpongeT3

| Input | Type | Description |
|:----- | ---- | ----------- |

!!! NOTICE

	Represents a batch of proposal reveals for a game.

```solidity
struct BatchProposalReveal {
  string[] proposals;
  uint256[2] a;
  uint256[2][2] b;
  uint256[2] c;
  uint256 permutationCommitment;
}
```

###  submitVote

```solidity
function submitVote(uint256 gameId, string sealedBallotId, address voter, bytes gmSignature, bytes voterSignature, bytes32 ballotHash) public
```

!!! NOTICE

	Submits a vote for a game. `gameId` is the ID of the game. `encryptedVotes` is the encrypted votes. `voter` is the address of the voter.

!!! NOTICE

	Emits a _VoteSubmitted_ event.

!!! NOTICE

	Requirements:

!!! NOTICE

	- The caller must be a game master of the game with `gameId`.
	- The game with `gameId` must exist.
	- The game with `gameId` must have started.
	- The game with `gameId` must not be over.
	- `voter` must be in the game with `gameId`.
	- The current turn of the game with `gameId` must be greater than 1.

###  submitProposal

this can be submitted by either player or game master, params contain ECDSA signatures for verification

```solidity
function submitProposal(struct RankifyInstanceGameMastersFacet.ProposalParams params) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `params` | `struct RankifyInstanceGameMastersFacet.ProposalParams` | ProposalParams |

!!! NOTICE

	submits a proposal for a game. `params` is the proposal data.

| Input | Type | Description |
|:----- | ---- | ----------- |
| `inputs` | `uint256[]` | Array of inputs to hash |
| `size` | `uint256` | Size of the inputs array |
| `poseidon5` | `address` | Address of Poseidon5 contract |
| `poseidon6` | `address` | Address of Poseidon6 contract |
| **Output** | |
|  `0`  | `bytes32` | hash3 The final hash |

!!! NOTICE

	Hashes the inputs using Poseidon sponge function.

###  endTurn

```solidity
function endTurn(uint256 gameId, uint256[][] votes, struct RankifyInstanceGameMastersFacet.BatchProposalReveal newProposals, uint256[] permutation, uint256 shuffleSalt) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | Id of the game |
| `votes` | `uint256[][]` | votes revealed for the previous turn |
| `newProposals` | `struct RankifyInstanceGameMastersFacet.BatchProposalReveal` | The new proposals for the current turn, see BatchProposalReveal |
| `permutation` | `uint256[]` | The permutation of the players |
| `shuffleSalt` | `uint256` | The shuffle salt |

<!--CONTRACT_END-->

