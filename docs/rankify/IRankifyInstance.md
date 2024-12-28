
# 

###  NoDivisionReminderAllowed

```solidity
error NoDivisionReminderAllowed(uint256 a, uint256 b)
```

###  invalidTurnCount

```solidity
error invalidTurnCount(uint256 nTurns)
```

###  RankNotSpecified

```solidity
error RankNotSpecified()
```

###  RegistrationOpen

```solidity
event RegistrationOpen(uint256 gameId)
```

###  PlayerJoined

```solidity
event PlayerJoined(uint256 gameId, address participant)
```

###  GameStarted

```solidity
event GameStarted(uint256 gameId)
```

###  gameCreated

```solidity
event gameCreated(uint256 gameId, address gm, address creator, uint256 rank)
```

###  GameClosed

```solidity
event GameClosed(uint256 gameId)
```

###  PlayerLeft

```solidity
event PlayerLeft(uint256 gameId, address player)
```

###  NewGameParamsInput

```solidity
struct NewGameParamsInput {
  uint256 gameRank;
  uint256 minPlayerCnt;
  uint256 maxPlayerCnt;
  uint96 nTurns;
  uint256 voteCredits;
  address gameMaster;
  uint128 minGameTime;
  uint128 timePerTurn;
  uint128 timeToJoin;
}
```

###  GameStateOutput

```solidity
struct GameStateOutput {
  uint256 rank;
  uint256 minGameTime;
  address createdBy;
  uint256 numOngoingProposals;
  uint256 numPrevProposals;
  uint256 numCommitments;
  uint256 numVotesThisTurn;
  uint256 numVotesPrevTurn;
  struct LibQuadraticVoting.qVotingStruct voting;
  uint256 currentTurn;
  uint256 turnStartedAt;
  uint256 registrationOpenAt;
  uint256 startedAt;
  bool hasStarted;
  bool hasEnded;
  uint256 numPlayersMadeMove;
  uint256 numActivePlayers;
  bool isOvertime;
  uint256 timePerTurn;
  uint256 maxPlayerCnt;
  uint256 minPlayerCnt;
  uint256 timeToJoin;
  uint256 maxTurns;
  uint256 voteCredits;
  address gameMaster;
}
```
<!--CONTRACT_END-->

