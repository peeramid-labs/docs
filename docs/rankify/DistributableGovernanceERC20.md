
# 

###  MintSettings

The settings for the initial mint of the token.

| Input | Type | Description |
|:----- | ---- | ----------- |

!!! NOTICE

	The lengths of `receivers` and `amounts` must match.

```solidity
struct MintSettings {
  address[] receivers;
  uint256[] amounts;
}
```

# IERC20MintableUpgradeable
Interface to allow minting of [ERC-20](https://eips.ethereum.org/EIPS/eip-20) tokens.

###  mint

Mints [ERC-20](https://eips.ethereum.org/EIPS/eip-20) tokens for a receiving address.

```solidity
function mint(address _to, uint256 _amount) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `_to` | `address` | The receiving address. |
| `_amount` | `uint256` | The amount of tokens. |

<!--CONTRACT_END-->

# GovernanceERC20
An [OpenZeppelin `Votes`](https://docs.openzeppelin.com/contracts/4.x/api/governance#Votes) compatible [ERC-20](https://eips.ethereum.org/EIPS/eip-20) token that can be used for voting and is managed by a DAO.

###  MintSettingsArrayLengthMismatch

Thrown if the number of receivers and amounts specified in the mint settings do not match.

```solidity
error MintSettingsArrayLengthMismatch(uint256 receiversArrayLength, uint256 amountsArrayLength)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `receiversArrayLength` | `uint256` | The length of the `receivers` array. |
| `amountsArrayLength` | `uint256` | The length of the `amounts` array. |

###  constructor

Calls the initialize function.

```solidity
constructor(contract IDAO _dao, string _name, string _symbol, struct MintSettings _mintSettings, address _accessManager) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `_dao` | `contract IDAO` | The managing DAO. |
| `_name` | `string` | The name of the [ERC-20](https://eips.ethereum.org/EIPS/eip-20) governance token. |
| `_symbol` | `string` | The symbol of the [ERC-20](https://eips.ethereum.org/EIPS/eip-20) governance token. |
| `_mintSettings` | `struct MintSettings` | The token mint settings struct containing the `receivers` and `amounts`. |
| `_accessManager` | `address` |  |

###  initialize

Initializes the contract and mints tokens to a list of receivers.

```solidity
function initialize(contract IDAO _dao, string _name, string _symbol, struct MintSettings _mintSettings, address accessManager) public
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `_dao` | `contract IDAO` | The managing DAO. |
| `_name` | `string` | The name of the [ERC-20](https://eips.ethereum.org/EIPS/eip-20) governance token. |
| `_symbol` | `string` | The symbol of the [ERC-20](https://eips.ethereum.org/EIPS/eip-20) governance token. |
| `_mintSettings` | `struct MintSettings` | The token mint settings struct containing the `receivers` and `amounts`. |
| `accessManager` | `address` |  |

###  supportsInterface

Checks if this or the parent contract supports an interface by its ID.

```solidity
function supportsInterface(bytes4 interfaceId) public view virtual returns (bool)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `interfaceId` | `bytes4` | The ID of the interface. |
| **Output** | |
|  `0`  | `bool` | Returns `true` if the interface is supported. |

###  mint

Mints tokens to an address.

```solidity
function mint(address to, uint256 amount) external
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `to` | `address` | The address receiving the tokens. |
| `amount` | `uint256` | The amount of tokens to be minted. |

!!! NOTICE

	Move voting power when tokens are transferred.

!!! NOTICE

	Emits a [IVotes-DelegateVotesChanged](.././IVotes-DelegateVotesChanged) event.

<!--CONTRACT_END-->

