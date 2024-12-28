
# RankifyInstanceGameMastersFacet
Facet handling game master functionality for Rankify instances

!!! NOTICE

	Implements game master specific operations like vote submission and game management

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
event ProposalSubmitted(uint256 gameId, uint256 turn, address proposer, bytes32 commitmentHash, string proposalEncryptedByGM)
```

###  ProposalParams

```solidity
struct ProposalParams {
  uint256 gameId;
  string encryptedProposal;
  bytes32 commitmentHash;
  address proposer;
}
```

###  VoteSubmitted

```solidity
event VoteSubmitted(uint256 gameId, uint256 turn, address player, string votesHidden)
```

###  submitVote

```solidity
function submitVote(uint256 gameId, string encryptedVotes, address voter) public
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

```solidity
function submitProposal(struct RankifyInstanceGameMastersFacet.ProposalParams proposalData) public
```

!!! NOTICE

	Submits a proposal for a game. `proposalData` is the proposal data.

!!! NOTICE

	Requirements:

!!! NOTICE

	- The game with `proposalData.gameId` must exist.
	- The caller must be a game master of the game with `proposalData.gameId`.

###  endTurn

```solidity
function endTurn(uint256 gameId, uint256[][] votes, string[] newProposals, uint256[] proposerIndices) public
```

!!! NOTICE

	Ends the current turn of a game with the provided game ID. `gameId` is the ID of the game. `votes` is the array of votes.
	`newProposals` is the array of new proposals for the upcoming voting round.
	`proposerIndices` is the array of indices of the proposers in the previous voting round.

!!! NOTICE

	emits a _ProposalScore_ event for each player if the turn is not the first.
	emits a _TurnEnded_ event.

!!! NOTICE

	Modifies:

!!! NOTICE

	- Calls the `_nextTurn` function with `gameId` and `newProposals`.
	- Resets the number of commitments of the game with `gameId` to 0.
	- Resets the proposal commitment hash and ongoing proposal of each player in the game with `gameId`.

!!! NOTICE

	Requirements:

!!! NOTICE

	- The caller must be a game master of the game with `gameId`.
	- The game with `gameId` must have started.
	- The game with `gameId` must not be over.
	-  newProposals array MUST be sorted randomly to ensure privacy
	votes and proposerIndices MUST correspond to players array from game.getPlayers()

<!--CONTRACT_END-->

