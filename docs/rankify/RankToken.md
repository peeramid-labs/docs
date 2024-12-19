
# RankToken
RankToken is a composite ERC1155 token that is used to track user ranks

###  Storage

```solidity
struct Storage {
  string _contractURI;
}
```

###  constructor

```solidity
constructor(string uri_, string cURI, address accessLayer) public
```

###  initialize

```solidity
function initialize(string uri_, string cURI, address accessLayer) public
```

###  contractURI

```solidity
function contractURI() public view returns (string)
```

###  setURI

```solidity
function setURI(string uri_) public
```

###  setContractURI

```solidity
function setContractURI(string uri_) public
```

###  mint

```solidity
function mint(address to, uint256 amount, uint256 level, bytes data) public
```

###  lock

```solidity
function lock(address account, uint256 id, uint256 amount) public
```

###  unlock

```solidity
function unlock(address account, uint256 id, uint256 amount) public
```

###  batchMint

```solidity
function batchMint(address to, uint256[] ids, uint256[] amounts, bytes data) public
```

!!! NOTICE

	Mints specified amounts of tokens to an account. `to` is the address of the account to mint the tokens to. `ids` is the array of IDs of the tokens to mint. `amounts` is the array of amounts of tokens to mint. `data` is the additional data.

| Input | Type | Description |
|:----- | ---- | ----------- |
| `from` | `address` | The address from which the tokens are being transferred. |
| `to` | `address` | The address to which the tokens are being transferred. |
| `ids` | `uint256[]` | An array of token IDs being transferred. |
| `values` | `uint256[]` | An array of token amounts being transferred. |

!!! NOTICE

	Hook function that is called before any token transfer.
	It checks if the transfer is allowed based on the locked amounts of the tokens.
	If the transfer is not allowed, it reverts with an error message.

###  supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) public view virtual returns (bool)
```

###  burn

```solidity
function burn(address account, uint256 id, uint256 value) public
```

<!--CONTRACT_END-->

