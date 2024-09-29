
# 

###  RankingInstanceUpdated

```solidity
event RankingInstanceUpdated(address newRankingInstance)
```

###  mint

```solidity
function mint(address to, uint256 amount, uint256 poolId, bytes data) external
```

!!! NOTICE

	Mints a specified amount of tokens to an account. `to` is the address of the account to mint the tokens to. `amount` is the amount of tokens to mint. `poolId` is the ID of the pool. `data` is the additional data.

###  batchMint

```solidity
function batchMint(address to, uint256[] ids, uint256[] amounts, bytes data) external
```

!!! NOTICE

	Mints specified amounts of tokens to an account. `to` is the address of the account to mint the tokens to. `ids` is the array of IDs of the tokens to mint. `amounts` is the array of amounts of tokens to mint. `data` is the additional data.

<!--CONTRACT_END-->

