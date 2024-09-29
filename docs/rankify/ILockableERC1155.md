
# ILockableERC1155

!!! NOTICE

	Interface for a lockable ERC1155 token contract.

###  insufficient

```solidity
error insufficient(uint256 id, uint256 balance, uint256 required)
```

###  TokensLocked

```solidity
event TokensLocked(address account, uint256 id, uint256 value)
```

###  TokensUnlocked

```solidity
event TokensUnlocked(address account, uint256 id, uint256 value)
```

###  lock

```solidity
function lock(address account, uint256 id, uint256 amount) external
```

!!! NOTICE

	Locks a specified amount of tokens for a given account and token ID. `account` is the address of the account to lock the tokens for. `id` is the ID of the token to lock. `amount` is the amount of tokens to lock.

!!! NOTICE

	emits a _TokensLocked_ event.

###  unlock

```solidity
function unlock(address account, uint256 id, uint256 amount) external
```

!!! NOTICE

	Unlocks a specified amount of tokens for a given account and token ID. `account` is the address of the account to unlock the tokens for. `id` is the ID of the token to unlock. `amount` is the amount of tokens to unlock.

!!! NOTICE

	emits a _TokensUnlocked_ event.

###  unlockedBalanceOf

```solidity
function unlockedBalanceOf(address account, uint256 id) external view returns (uint256)
```

!!! NOTICE

	Returns the unlocked balance of tokens for a given account and token ID. `account` is the address of the account to check the unlocked balance for. `id` is the ID of the token to check the unlocked balance for.

!!! NOTICE

	Returns:

!!! NOTICE

	- The unlocked balance of tokens.

<!--CONTRACT_END-->

