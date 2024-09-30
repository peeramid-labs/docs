# Overview

We are using [Ethereum Distribution System](https://github.com/peeramid-labs/eds) to enable users to deploy their own infrastructure in transparent and decentralized way.

In order to be out of box compatible with the interfaces & notifications of the Rankify platform, any deployment should should be done from the Peeramid Labs Distributor contract ([PeeramidLabsDistributor.sol](./src/distributors/PeeramidLabsDistributor.sol)).

Specific address for distributor deployment can be found in the [deployments github directory](https://github.com/peeramid-labs/contracts/blob/main/deployments).

!!! WARNING

    This is a work in progress, and the documentation is not yet complete. It will change over time.

# MAODistribution contract

[MAODistribution.sol](https://github.com/peeramid-labs/contracts/blob/main/src/distributions/MAODistribution.sol) is used to create a new Meritocratic Autonomous Organization (MAO).

This deployment will create following infrastructure:

-   [RankToken](https://github.com/peeramid-labs/contracts/blob/main/tokens/RankToken.sol) - ERC1155 token used to represent the ranks in the MAO.
-   [Governance token](https://github.com/peeramid-labs/contracts/blob/main/tokens/DistributableGovernanceERC20.sol) - ERC20 token used to represent the governance in the MAO.
-   [ACID Distribution](https://github.com/peeramid-labs/contracts/blob/main/distributions/ArguableVotingTournament.sol) - Arguable Voting Tournament contract used to distribute governance tokens.
-   [Aragon OSx DAO](https://aragon.org/) - Aragon DAO used as wrapped smart account that represents the MAO.
-   [Aragon Token Voting Plugin](https://github.com/aragon/token-voting-plugin) - Aragon plugin used to vote on proposals within the DAO.

# ACID distribution

[ArguableVotingTournament.sol](https://github.com/peeramid-labs/contracts/blob/main/src/distributions/ArguableVotingTournament.sol) is used to distribute governance tokens to the participants of the MAO by conducting autonomous competence identification tournaments.

This distribution deploys the Diamond Proxy that contains the following facets:

-   [EIP712InspectorFacet](https://github.com/peeramid-labs/contracts/blob/main/src/facets/EIP712InspectorFacet.sol) - Facet that contains the main logic of the distribution.
-   [RankifyInstanceMainFacet](https://github.com/peeramid-labs/contracts/blob/main/src/facets//RankifyInstanceMainFacet.sol) - Facet that contains the main logic of the distribution.
-   [RankifyGameMastersFacetFacet](https://github.com/peeramid-labs/contracts/blob/main/src/facets/RankifyInstanceGameMastersFacet.sol) - Facet that contains the main logic of the distribution.
-   [RankifyInstanceGameOwnersFacet](https://github.com/peeramid-labs/contracts/blob/main/src/facets/RankifyInstanceGameOwnersFacet.sol) - Facet that contains the ownable logic of the distribution. (NB this will be deprecated)
-   [RankifyInstanceRequirementsFacet](https://github.com/peeramid-labs/contracts/blob/main/src/facets/RankifyInstanceRequirementsFacet.sol) - Facet that contains the requirements logic of the distribution.


If you have any further questions to clarify, please feel free to ask in the [Rankify Discord](https://discord.gg/EddGgGUuWC).
