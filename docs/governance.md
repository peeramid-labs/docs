# Meritocratic Autonomous Organizations

Meritocratic Autonomous Organizations (MAOs) are a new form of decentralized organization that is designed to be more efficient, transparent, and fair than traditional organizations. MAOs are built on blockchain technology, which allows them to operate without a central authority, similarly to [DAOs](https://en.wikipedia.org/wiki/Decentralized_autonomous_organization). However, MAOs are different from DAOs in that they are designed to be meritocratic, meaning that decisions are made based on the merit of the participants rather than on their wealth or power within the organization.

Autonomously measuring merit is a complex task, and it is done trough a [Autonomous Competence Identification Protocol](https://rankify.it/research/paper).

### Why MAOs?

The traditional DAOs are often criticized for being plutocratic, meaning that decisions are made based on the amount of tokens that a participant holds. This can lead to situations where a small group of wealthy participants can control the organization and make decisions that are not in the best interest of the community.

It's been analyzed in multiple research by now that the biggest DAOs out there are not able to make decisions in a timely manner, and that they are often stuck in a deadlock. This is because the quorum is set too high, and because the governance tokens are not distributed in a fair way. Alternatively, setting quorum threshold too low leads to governance quorum attacks and hence to a loss of value of the organization.

MAOs are designed to address these issues by using a meritocratic system to distribute governance tokens. This means that decisions are made based on the merit of the participants, rather than on the amount of tokens that they hold. This ensures that decisions are made in the best interest of the community, and that the organization is able to adapt to changing circumstances in a timely manner.

### MAO structure

In a nutshell, a MAO is just a DAO smart account that is governed by a token that is minted by a competence identification protocol. Such competence identification protocol may be thought of as "tournament" that challenges participants to prove their competence in a specific area.

The tournament itself can be pretty much anything, as long as it is able to fulfill basic requirements of the protocol. Such are: minimal participation time, and exponential sybil attack resistance.

The produced asset is representation of the competence, yet it is not just ready for use in voting. This is used to ensure that exiting ranking ladder is important event for a participant, which designates his role change from a participant to a decision maker.

#### Participant vs Decision Maker

In a MAO, there are two types of participants: participants and decision makers. Participants are those who compete in the competence identification games and earn rank tokens based on their performance.
This mechanism allows other organizations to use rank tokens as merit-specific service utility. For example, a third-party DAO may purchase out the competence tokens from participants to use them as reward for performing merit-specific services for that organization. Alternatively they might require participants to stake their tokens in some mission critical service provided by participants to a third party.

Decision makers are those who hold governance tokens and are able to vote on proposals and participate in the governance of the MAO. Decision makers obtain governance tokens by exchanging rank tokens for them. This ensures that the governance of the MAO is based on the merit of the participants, rather than on the amount of tokens that they bought during an ICO.
By exchanging their rank tokens in to governance power, participants are able to take part in the governance of the MAO and to influence its decisions, this also means their _rank_ gets reset, subjecting their governance power to inflation which acts as incentive for being active in governance.

### Progressive decentralization

As _decision makers_ eventually lose the quorum their group might have, they are risking losing any assets that they have in the organization. While this is a good incentive for them to stay active in the governance, and prevents the organization from being stuck in a deadlock, its also a risk.

In order to prevent this, a MAO can be decentralized further by creating a sub-organization that is derived from the parent organization. This creates a situation where there can be multiple sub-organizations that are all derived from the same parent organization, but that have different governance tokens and different quorums.

In order to ensure that the parent organization stays in partial control over the sub-organization assets, the sub-organization is connected to the parent organization via a multi-sig wallet.

In the diagram below, you can see one parent organization and two sub-organizations that are derived from it. While each organization is able to make decisions independently, the parent organization is able to stay in partial control over the sub-organizations simply by fact that minting sub-organization governance tokens requires parent governance token as an input.
The multi-sig wallet is used to ensure that the parent organization is able to prevent any assets from being lost in the sub-organization. Any transaction from such a multi-signature wallet would require all governing bodies to agree on it.
This design ensures parent organization may design the multi-sig wallet in a way that it is able to prevent any assets from being lost in the sub-organization, while still allowing the sub-organization to make decisions independently and promptly.

![two sub daos](assets/two_sub_dao.png)

