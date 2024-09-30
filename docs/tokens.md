# Tokenomics

In order to maintain globally interoperable meritocratic system, that can be used by any organization, we have defined a set of tokens that provide a base for the system.

There is one main token that is used as common denominator for the system, and that is `RKFY` token. By having this, we may say that the system forms a network of Organizations that all are using same financial basis and hence are interoperable.

## Token types

### RKFY

RKFY is a utility token that allows to instantiate a new organization on the Rankify platform. It has only use to participate in the competence identification games that are deployed from the shared, trusted factory source code and hence provisions inter organization trust.

Rankify token is ERC20 token, it will be freely available on the market and hence will ensure that the system is decentralized and is an open economy, anyone can participate in.

### Rank Token

Rank NFT is a semi fungible token that represents a competence. It is implemented as `ERC1155` standard. It acts as a proof of competence that may be used in various scenarios as NFT itself, where token `id` represents bearers _rank_ (competence) of the bearer. Value of this token is determined by the _ranking instance_ that has issued it, in most general case it's value is approximately equal to the value of the `RKFY` token a sybil attack would cost which in current implementation is exponential of the token id (_rank_).

!!! Note

    There can exist multiple Rank Tokens for a different causes, that are defined by merit specifications given by the creator.

!!! Note
    Smart contract architecture provisions that there might be additional tokens used for the baseline of the system, in parallel to the `RKFY` token.

These tokens are merit dimension specific and can be exchanged for a governance token in underlying DAO. The exchange mechanism is provided by the MAO factory and is unidirectional, reverse exchange is free-market based.


### Governance tokens

Governance token is a token that represents a voting power in the DAO. It is implemented as `ERC20` standard with voting extensions. It is used to vote on proposals and to participate in the governance of the DAO.

!!! Note

    You can think of this as airdrop replacer. "Proof of _merit_", represented as Rank Token is used to mint governance tokens.

!!! Note

    By the design, governance tokens are always a subject of inflation, as ability to mint those is only limited by the amount of `RKFY` token that is available. This implies that achieving quorum is a matter of time, and that the DAO is always able to make decisions. This is a design feature that is intended to make the DAOs more efficient and to prevent them from being stuck in a deadlock.


#### Derivate governance tokens

Continuous inflation combined with unidirectional exchange mechanism creates everlasting risk of loss of quorum for those currently holding it within a merit-specific DAO.

To prevent this, a derivate MAO can be created on top of the existing one by using current governance token as baseline instead of `RKFY`. This creates a situation where there can be multiple sub-organizations that are all derived from the same parent organization, but that have different governance tokens and different quorums.

 This is simple, yet powerful feature that allows to ensure that quorum holders are always able to prevent fund loss or lockups in case of hyperinflation of the governance token.

!!! Note

    We provision a mechanism which will allow parent organization to stay in partial control over the sub-organization assets, hence ensuring there is no parent organization value loss in process of progressively decentralizing the organization.

!!! Note

    This is a powerful feature that allows to create a hierarchy of organizations that are all interoperable and that can be used to create complex governance structures that are able to adapt to the changing environment, and take more granular roles.

