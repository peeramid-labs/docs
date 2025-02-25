
# IMultipass
Interface for the Multipass contract. Multipass contract acts as cross-domain registry, allowing owner to specify registrars and domains that can be used to register names.
It also allows for referral program, where referrers can earn rewards for referring new registrations.

###  InvalidQueryReasons

```solidity
enum InvalidQueryReasons {
  EMPTY_ID,
  EMPTY_DOMAIN,
  EMPTY_ADDRESS
}
```

###  invalidQuery

```solidity
error invalidQuery(enum IMultipass.InvalidQueryReasons reason)
```

###  nameExists

```solidity
error nameExists(bytes32 name)
```

###  recordExists

```solidity
error recordExists(struct LibMultipass.Record newRecord)
```

###  isActive

```solidity
error isActive(bytes32 name, bool isActive)
```

###  signatureExpired

```solidity
error signatureExpired(uint256 signatureDeadline)
```

###  invalidSignature

```solidity
error invalidSignature()
```

###  mathOverflow

```solidity
error mathOverflow(uint256 a, uint256 b)
```

###  invalidDomain

```solidity
error invalidDomain(bytes32 domainName)
```

###  referralRewardsTooHigh

```solidity
error referralRewardsTooHigh(uint256 referrerReward, uint256 referralDiscount, uint256 fee)
```

###  invalidRegistrar

```solidity
error invalidRegistrar(address registrar)
```

###  paymentTooLow

```solidity
error paymentTooLow(uint256 fee, uint256 value)
```

###  paymendFailed

```solidity
error paymendFailed()
```

###  referredSelf

```solidity
error referredSelf()
```

###  domainNotActive

```solidity
error domainNotActive(bytes32 domainName)
```

###  userNotFound

```solidity
error userNotFound(struct LibMultipass.NameQuery query)
```

###  invalidnameChange

```solidity
error invalidnameChange(bytes32 domainName, bytes32 newName)
```

###  invalidNonce

```solidity
error invalidNonce(uint256 nonce)
```

###  invalidNonceIncrement

```solidity
error invalidNonceIncrement(uint256 old, uint256 newer)
```

###  resolveRecord

```solidity
function resolveRecord(struct LibMultipass.NameQuery query) external view returns (bool, struct LibMultipass.Record)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `query` | `struct LibMultipass.NameQuery` | The name query to resolve. |
| **Output** | |
|  `0`  | `bool` | A boolean indicating whether the record was found, and the resolved record. |
|  `1`  | `struct LibMultipass.Record` |  |

!!! NOTICE

	Retrieves the resolved record for a given name query.

###  initializeDomain

```solidity
function initializeDomain(address registrar, uint256 fee, uint256 renewalFee, bytes32 domainName, uint256 referrerReward, uint256 referralDiscount) external
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
	@param fee fee in base currency of network
	@param domainName name of LibMultipass.Domain
	@param referrerReward referral fee share in base currency of network
	@param referralDiscount referral discount in base currency of network

!!! NOTICE

	Emits an [InitializedDomain](.././InitializedDomain) event.

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

	Emits an [DomainActivated](.././DomainActivated) event.

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

	Emits an [DomainDeactivated](.././DomainDeactivated) event.

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

	Emits an [DomainFeeChanged](.././DomainFeeChanged) event.

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

	Emits an [RegistrarChangeRequested](.././RegistrarChangeRequested) event.

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

	Emits an [DomainTTLChangeRequested](.././DomainTTLChangeRequested) event.

###  changeReferralProgram

```solidity
function changeReferralProgram(uint256 referrerFeeShare, uint256 referralDiscount, bytes32 domainName) external
```

!!! NOTICE

	executes all pending changes to LibMultipass.Domain that fulfill TTL

!!! NOTICE

	Requirements:
	domainName must be set
	referrerFeeShare+referralDiscount cannot be larger than 2^32

!!! NOTICE

	Emits an [ReferralProgramChangeRequested](.././ReferralProgramChangeRequested) event.

###  changeRenewalFee

```solidity
function changeRenewalFee(uint256 fee, bytes32 domainName) external
```

!!! NOTICE

	changes renewal fee for domain

!!! NOTICE

	Requirements:
	domainName must be set
	fee must be set

!!! NOTICE

	Emits an [RenewalFeeChangeRequested](.././RenewalFeeChangeRequested) event.

###  register

```solidity
function register(struct LibMultipass.Record newRecord, bytes registrarSignature, struct LibMultipass.NameQuery referrer, bytes referralCode) external payable
```

!!! NOTICE

	registers new name under LibMultipass.Domain

!!! NOTICE

	Requirements:
	all arguments must be set
	domainName must be active
	resolveRecord for given arguments should return no LibMultipass.Record

!!! NOTICE

	Emits an [Registered](.././registered) event.

###  getDomainState

```solidity
function getDomainState(bytes32 domainName) external view returns (struct LibMultipass.Domain)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | name of the LibMultipass.Domain |
| **Output** | |
|  `0`  | `struct LibMultipass.Domain` | (name,       fee,        referrerReward,        referralDiscount,        isActive,        registrar,        ttl,         registerSize) |

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

###  fundsWithdawn

```solidity
event fundsWithdawn(uint256 amount, address account)
```

!!! NOTICE

	returns price for registering name

###  InitializedDomain

```solidity
event InitializedDomain(address registrar, uint256 fee, bytes32 domainName, uint256 renewalFee, uint256 referrerReward, uint256 referralDiscount)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `registrar` | `address` | The address of the registrar for the domain. |
| `fee` | `uint256` | The fee required for registration in the domain. |
| `domainName` | `bytes32` | The name of the domain. |
| `renewalFee` | `uint256` |  |
| `referrerReward` | `uint256` | The reward for referring new registrations to the domain. |
| `referralDiscount` | `uint256` | The discount for referrals in the domain. |

!!! NOTICE

	Initializes a new domain with the specified parameters.

###  DomainActivated

```solidity
event DomainActivated(bytes32 domainName)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The name of the activated domain. |

!!! NOTICE

	Emitted when a domain is activated.

###  DomainDeactivated

```solidity
event DomainDeactivated(bytes32 domainName)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The name of the deactivated domain. |

!!! NOTICE

	Emitted when a domain is deactivated.

###  DomainFeeChanged

```solidity
event DomainFeeChanged(bytes32 domainName, uint256 newFee)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The name of the domain. |
| `newFee` | `uint256` | The new fee for the domain. |

!!! NOTICE

	Emitted when the fee for a domain is changed.

###  RegistrarChanged

```solidity
event RegistrarChanged(bytes32 domainName, address registrar)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The name of the domain. |
| `registrar` | `address` | The address of the new registrar. |

!!! NOTICE

	Emitted when a registrar change is requested for a domain.

###  nameDeleted

```solidity
event nameDeleted(bytes32 domainName, address wallet, bytes32 id, bytes32 name)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The domain name. |
| `wallet` | `address` | The address of the wallet. |
| `id` | `bytes32` | The ID of the name. |
| `name` | `bytes32` | The name. |

!!! NOTICE

	Emitted when a name is deleted.

###  ReferralProgramChanged

```solidity
event ReferralProgramChanged(bytes32 domainName, uint256 reward, uint256 discount)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The domain name. |
| `reward` | `uint256` | The referral reward amount. |
| `discount` | `uint256` | The referral discount amount. |

!!! NOTICE

	Emitted when the referral program for a domain is changed.

###  Registered

```solidity
event Registered(bytes32 domainName, struct LibMultipass.Record NewRecord)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The domain name. |
| `NewRecord` | `struct LibMultipass.Record` | The new record. |

!!! NOTICE

	Emitted when a domain is registered.

###  Referred

```solidity
event Referred(struct LibMultipass.Record refferrer, struct LibMultipass.Record newRecord, bytes32 domainName)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `refferrer` | `struct LibMultipass.Record` | The record of the referrer. |
| `newRecord` | `struct LibMultipass.Record` | The new record. |
| `domainName` | `bytes32` | The domain name. |

!!! NOTICE

	Emitted when a user is referred.

###  Renewed

```solidity
event Renewed(address wallet, bytes32 domainName, bytes32 id, struct LibMultipass.Record newRecord)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `wallet` | `address` | The address of the wallet. |
| `domainName` | `bytes32` | The domain name. |
| `id` | `bytes32` | The ID of the record. |
| `newRecord` | `struct LibMultipass.Record` | The new record. |

!!! NOTICE

	Emitted when a user record is renewed.

###  RenewalFeeChanged

```solidity
event RenewalFeeChanged(bytes32 domainName, uint256 newFee)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `domainName` | `bytes32` | The domain name. |
| `newFee` | `uint256` | The new renewal fee. |

!!! NOTICE

	Emitted when a domain renewal fee is changed.

###  getDomainStateById

```solidity
function getDomainStateById(uint256 id) external view returns (struct LibMultipass.Domain)
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `id` | `uint256` | The ID of the domain. |
| **Output** | |
|  `0`  | `struct LibMultipass.Domain` | The domain state as a `LibMultipass.Domain` struct. |

!!! NOTICE

	Retrieves the domain state by its ID.

###  renewRecord

renews record for given query

```solidity
function renewRecord(struct LibMultipass.NameQuery query, struct LibMultipass.Record record, bytes registrarSignature) external payable
```

| Input | Type | Description |
|:----- | ---- | ----------- |
| `query` | `struct LibMultipass.NameQuery` | name query |
| `record` | `struct LibMultipass.Record` | new record |
| `registrarSignature` | `bytes` | registrar signature |

<!--CONTRACT_END-->

