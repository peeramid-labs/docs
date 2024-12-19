
# RankifyInstanceMainFacet
Main facet for the Rankify protocol that handles game creation and management

!!! NOTICE

	Implements core game functionality, ERC token receivers, and reentrancy protection

###  createGame

This function:
        - Validates the contract is initialized
        - Processes input parameters
        - Creates a new game with specified settings

```solidity
function createGame(struct IRankifyInstance.NewGameParamsInput params) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `params` | `struct IRankifyInstance.NewGameParamsInput` | Input parameters for creating a new game |

!!! NOTICE

	External function to create a new game

###  cancelGame

This function:
        - Calls the &#x60;enforceIsGameCreator&#x60; function with &#x60;msg.sender&#x60;.
        - Cancels the game.
        - Emits a _GameClosed_ event.

```solidity
function cancelGame(uint256 gameId) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game. |

!!! NOTICE

	Cancels a game with the provided game ID. `gameId` is the ID of the game.

###  leaveGame

This function:
        - Calls the &#x60;quitGame&#x60; function with &#x60;msg.sender&#x60;, &#x60;true&#x60;, and &#x60;onPlayerQuit&#x60;.

```solidity
function leaveGame(uint256 gameId) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game. |

!!! NOTICE

	Allows a player to leave a game with the provided game ID. `gameId` is the ID of the game.

###  openRegistration

This function:
        - Calls the &#x60;enforceIsGameCreator&#x60; function with &#x60;msg.sender&#x60;.
        - Calls the &#x60;enforceIsPreRegistrationStage&#x60; function.
        - Calls the &#x60;openRegistration&#x60; function.
        - Emits a _RegistrationOpen_ event.

```solidity
function openRegistration(uint256 gameId) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game. |

!!! NOTICE

	Opens registration for a game with the provided game ID. `gameId` is the ID of the game.

###  joinGame

This function:
        - Calls the &#x60;joinGame&#x60; function with &#x60;msg.sender&#x60;.
        - Calls the &#x60;fund&#x60; function with &#x60;bytes32(gameId)&#x60;.
        - Emits a _PlayerJoined_ event.

```solidity
function joinGame(uint256 gameId) public payable
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game. |

!!! NOTICE

	Allows a player to join a game with the provided game ID. `gameId` is the ID of the game.

###  startGame

This function:
        - Calls the &#x60;enforceGameExists&#x60; function.
        - Calls the &#x60;startGameEarly&#x60; function.
        - Emits a _GameStarted_ event.

```solidity
function startGame(uint256 gameId) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game. |

!!! NOTICE

	Starts a game with the provided game ID early. `gameId` is the ID of the game.

###  onERC1155Received

```solidity
function onERC1155Received(address operator, address, uint256, uint256, bytes) public view returns (bytes4)
```

###  onERC1155BatchReceived

```solidity
function onERC1155BatchReceived(address operator, address, uint256[], uint256[], bytes) external view returns (bytes4)
```

###  onERC721Received

```solidity
function onERC721Received(address operator, address, uint256, bytes) external view returns (bytes4)
```

###  getContractState

```solidity
function getContractState() public pure returns (struct LibRankify.InstanceState)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `struct LibRankify.InstanceState` | LibRankify.InstanceState The current state of the contract |

!!! NOTICE

	Returns the current state of the contract

###  getTurn

```solidity
function getTurn(uint256 gameId) public view returns (uint256)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `uint256` | uint256 The current turn of the game |

!!! NOTICE

	Returns the current turn of the game with the specified ID

###  getGM

```solidity
function getGM(uint256 gameId) public view returns (address)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `address` | address The game master of the game |

!!! NOTICE

	Returns the game master of the game with the specified ID

###  getScores

```solidity
function getScores(uint256 gameId) public view returns (address[], uint256[])
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `address[]` | address[] The players in the game |
|  `1`  | `uint256[]` | uint256[] The scores of the players |

!!! NOTICE

	Returns the scores of the game with the specified ID

###  isOvertime

```solidity
function isOvertime(uint256 gameId) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool` | bool Whether the game is in overtime |

!!! NOTICE

	Returns whether the game with the specified ID is in overtime

###  isGameOver

```solidity
function isGameOver(uint256 gameId) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool` | bool Whether the game is over |

!!! NOTICE

	Returns whether the game with the specified ID is over

###  getPlayersGame

```solidity
function getPlayersGame(address player) public view returns (uint256)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `player` | `address` | The address of the player |
| **Output** | |
|  `0`  | `uint256` | uint256 The ID of the game |

!!! NOTICE

	Returns the game ID of the game that the specified player is in

###  isLastTurn

```solidity
function isLastTurn(uint256 gameId) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool` | bool Whether the game is in the last turn |

!!! NOTICE

	Returns whether the game with the specified ID is in the last turn

###  isRegistrationOpen

```solidity
function isRegistrationOpen(uint256 gameId) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool` | bool Whether registration is open |

!!! NOTICE

	Returns whether registration is open for the game with the specified ID

###  gameCreator

```solidity
function gameCreator(uint256 gameId) public view returns (address)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `address` | address The creator of the game |

!!! NOTICE

	Returns the creator of the game with the specified ID

###  getGameRank

```solidity
function getGameRank(uint256 gameId) public view returns (uint256)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `uint256` | uint256 The rank of the game |

!!! NOTICE

	Returns the rank of the game with the specified ID

###  estimateGamePrice

```solidity
function estimateGamePrice(uint128 minGameTime) public pure returns (uint256)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `minGameTime` | `uint128` | The minimum game time |
| **Output** | |
|  `0`  | `uint256` | uint256 The estimated price of the game |

!!! NOTICE

	Estimates the price of a game with the specified minimum game time

###  getPlayers

```solidity
function getPlayers(uint256 gameId) public view returns (address[])
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `address[]` | address[] The players in the game |

!!! NOTICE

	Returns the players in the game with the specified ID

###  canStartGame

```solidity
function canStartGame(uint256 gameId) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool` | bool Whether the game can be started early |

!!! NOTICE

	Returns whether the game with the specified ID can be started early

###  canEndTurn

```solidity
function canEndTurn(uint256 gameId) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool` | bool Whether the turn can be ended early |

!!! NOTICE

	Returns whether the turn can be ended early for the game with the specified ID

###  isPlayerTurnComplete

```solidity
function isPlayerTurnComplete(uint256 gameId, address player) public view returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| `player` | `address` | The address of the player |
| **Output** | |
|  `0`  | `bool` | bool Whether the player has completed their turn |

!!! NOTICE

	Returns whether the player has completed their turn in the game with the specified ID

###  getPlayerVotedArray

```solidity
function getPlayerVotedArray(uint256 gameId) public view returns (bool[])
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool[]` | bool[] The voted array |

!!! NOTICE

	Returns the voted array for the game with the specified ID

###  getPlayersMoved

```solidity
function getPlayersMoved(uint256 gameId) public view returns (bool[], uint256)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `gameId` | `uint256` | The ID of the game |
| **Output** | |
|  `0`  | `bool[]` | bool[] The players who have moved |
|  `1`  | `uint256` | uint256 The number of players who have moved |

!!! NOTICE

	Returns the players who have moved in the game with the specified ID

<!--CONTRACT_END-->

