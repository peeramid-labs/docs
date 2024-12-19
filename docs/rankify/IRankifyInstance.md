
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
<!--CONTRACT_END-->

