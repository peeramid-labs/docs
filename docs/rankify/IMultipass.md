
# 

###  resolveRecord

```solidity
function resolveRecord(struct LibMultipass.NameQuery query) external view returns (bool, struct LibMultipass.Record)
```

###  initializeDomain

```solidity
function initializeDomain(address registrar, uint256 freeRegistrationsNumber, uint256 fee, bytes32 domainName, uint256 referrerReward, uint256 referralDiscount) external
```

!!! NOTICE

	Initializes new LibMultipass.Domain and configures it's parameters

!!! NOTICE

	Requirements:
	registrar is not zero
	domainName is not empty
	domainIndex is either zero(auto assign) or can be one of preoccupied LibMultipass.Domain names
	domainName does not exist yet
	onlyOwner
	referrerReward+referralDiscount cannot be larger than fee
	@param registrar address of registrar
	@param freeRegistrationsNumber number of registrations free of fee
	@param fee fee in base currency of network
	@param domainName name of LibMultipass.Domain
	@param referrerReward referral fee share in base currency of network
	@param referralDiscount referral discount in base currency of network

!!! NOTICE

	Emits an [InitializedDomain](#initializeddomain) event.

###  activateDomain

```solidity
function activateDomain(bytes32 domainName) external
```

!!! NOTICE

	Activates LibMultipass.Domain name

!!! NOTICE

	Requirements:
	msg.sender is Owner

!!! NOTICE

	Emits an [DomainActivated](#domainactivated) event.

###  deactivateDomain

```solidity
function deactivateDomain(bytes32 domainName) external
```

!!! NOTICE

	Deactivates LibMultipass.Domain name

!!! NOTICE

	Deactivated LibMultipass.Domain cannot mutate names and will return zeros

!!! NOTICE

	Requirements:
	msg.sender is Owner OR registrar

!!! NOTICE

	Emits an [DomainDeactivated](#domaindeactivated) event.

###  changeFee

```solidity
function changeFee(bytes32 domainName, uint256 fee) external
```

!!! NOTICE

	Changes registrar address

!!! NOTICE

	Requirements:
	msg.sender is Owner

!!! NOTICE

	Emits an [DomainFeeChanged](#domainfeechanged) event.

###  changeRegistrar

```solidity
function changeRegistrar(bytes32 domainName, address newRegistrar) external
```

!!! NOTICE

	Changes registrar address

!!! NOTICE

	Requirements:
	msg.sender is Owner

!!! NOTICE

	Emits an [RegistrarChangeRequested](#registrarchangerequested) event.

###  deleteName

```solidity
function deleteName(struct LibMultipass.NameQuery query) external
```

!!! NOTICE

	deletes name

!!! NOTICE

	Requirements:
	msg.sender is Owner

!!! NOTICE

	Emits an [DomainTTLChangeRequested](#domainttlchangerequested) event.

###  changeReferralProgram

```solidity
function changeReferralProgram(uint256 referrerFeeShare, uint256 referralDiscount, uint256 freeRegistrations, bytes32 domainName) external
```

!!! NOTICE

	executes all pending changes to LibMultipass.Domain that fulfill TTL

!!! NOTICE

	Requirements:
	domainName must be set
	referrerFeeShare+referralDiscount cannot be larger than 2^32

!!! NOTICE

	Emits an [ReferralProgramChangeRequested](#referralprogramchangerequested) event.

###  register

```solidity
function register(struct LibMultipass.Record newRecord, bytes32 domainName, bytes registrarSignature, uint256 signatureDeadline, struct LibMultipass.NameQuery referrer, bytes referralCode) external payable
```

!!! NOTICE

	registers new name under LibMultipass.Domain

!!! NOTICE

	Requirements:
	all arguments must be set
	domainName must be active
	resolveRecord for given arguments should return no LibMultipass.Record

!!! NOTICE

	Emits an [registered](#registered) event.

###  modifyUserName

```solidity
function modifyUserName(bytes32 domainName, struct LibMultipass.NameQuery query, bytes32 newName, bytes registrarSignature, uint256 signatureDeadline) external payable
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | LibMultipass.Domain |
| `query` | `struct LibMultipass.NameQuery` |  |
| `newName` | `bytes32` | new name  Emits an [Modified](#modified) event. |
| `registrarSignature` | `bytes` |  |
| `signatureDeadline` | `uint256` |  |

!!! NOTICE

	modifies exsisting LibMultipass.Record

!!! NOTICE

	Requirements:
	resolveRecord for given arguments should return valid LibMultipass.Record
	LibMultipass.Domain must be active
	newAddress and newName should be set and be unique in current LibMultipass.Domain

###  getBalance

```solidity
function getBalance() external view returns (uint256)
```

!!! NOTICE

	returns balance of this contract

###  getDomainState

```solidity
function getDomainState(bytes32 domainName) external view returns (struct LibMultipass.Domain)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | name of the LibMultipass.Domain |
| **Output** | |
|  `0`  | `struct LibMultipass.Domain` | (name,       fee,       freeRegistrationsNumber,        referrerReward,        referralDiscount,        isActive,        registrar,        ttl,         registerSize) |

!!! NOTICE

	returns LibMultipass.Domain state variables

###  getContractState

```solidity
function getContractState() external view returns (uint256)
```

| Output | Type | Description |
| ------ | ---- | ----------- |
|  `0`  | `uint256` | (s_numDomains) |

!!! NOTICE

	returns contract state variables

###  withrawFunds

```solidity
function withrawFunds(address to) external
```

!!! NOTICE

	Withraws funds stored in smart contract

!!! NOTICE

	Requirements:
	onlyOwner

!!! NOTICE

	Emits an [fundsWithdawn](#fundswithdawn) event.

###  getModifyPrice

```solidity
function getModifyPrice(struct LibMultipass.NameQuery query) external view returns (uint256)
```

###  fundsWithdawn

```solidity
event fundsWithdawn(uint256 amount, address account)
```

###  InitializedDomain

```solidity
event InitializedDomain(address registrar, uint256 freeRegistrationsNumber, uint256 fee, bytes32 domainName, uint256 referrerReward, uint256 referralDiscount)
```

###  DomainActivated

```solidity
event DomainActivated(bytes32 domainName)
```

###  DomainDeactivated

```solidity
event DomainDeactivated(bytes32 domainName)
```

###  DomainFeeChanged

```solidity
event DomainFeeChanged(bytes32 domainName, uint256 newFee)
```

###  FreeRegistrationsChanged

```solidity
event FreeRegistrationsChanged(uint256 domainIndex, uint256 newAmount)
```

###  RegistrarChangeRequested

```solidity
event RegistrarChangeRequested(bytes32 domainName, address registrar)
```

###  DomainNameChangeRequested

```solidity
event DomainNameChangeRequested(uint256 domainIndex, bytes32 NewDomainName)
```

###  nameDeleted

```solidity
event nameDeleted(bytes32 domainName, address wallet, bytes32 id, bytes32 name)
```

###  DomainTTLChangeRequested

```solidity
event DomainTTLChangeRequested(bytes32 domainName, uint256 amount)
```

###  ReferralProgramChanged

```solidity
event ReferralProgramChanged(bytes32 domainName, uint256 reward, uint256 discount, uint256 freeNumber)
```

###  DomainChangesAreLive

```solidity
event DomainChangesAreLive(bytes32 domainName, bytes32[] changes)
```

###  changesQeueCanceled

```solidity
event changesQeueCanceled(bytes32 domainName, bytes32[] changes)
```

###  Registered

```solidity
event Registered(bytes32 domainName, struct LibMultipass.Record NewRecord)
```

###  Referred

```solidity
event Referred(struct LibMultipass.Record refferrer, struct LibMultipass.Record newRecord, bytes32 domainName)
```

###  UserRecordModified

```solidity
event UserRecordModified(struct LibMultipass.Record newRecord, bytes32 oldName, bytes32 domainName)
```

<!--CONTRACT_END-->

