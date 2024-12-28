
# Diamond Proxy Distribution
This contract is EDS compatible factory for diamond proxies

!!! NOTICE

	This uses modified version of Diamond Proxy, which allows proxy itself to cloned

###  constructor

```solidity
constructor(address owner) public
```

###  instantiate

```solidity
function instantiate(bytes) external virtual returns (address[], bytes32, uint256)
```

###  contractURI

```solidity
function contractURI() public pure virtual returns (string)
```

<!--CONTRACT_END-->

