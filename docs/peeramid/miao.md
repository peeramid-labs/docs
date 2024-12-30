# Meritocratic Interplanetary Autonomous Organization

Meritocratic Interoperable Autonomous Organization (MIAO) is a core building block that composes the Peeramid Network.
This building block is located in trie of trust enabling interoperability and mutual connectivity of organizations, defined as flow of control, where parent organization may channel its own utility or governance supply into sub-branches devoted to specific organizations.



In the organization above, the branch organizations are independent structures defined by their own token and own holders who are, however, derived from the parent organization through a process of evaluating the merits.

This branching is literally endless and allows effectively decentralizing any organization into a set of interconnected branches, capable of managing specific parts of the same protocol or sub-treasuries efficiently.

## Branch formation process

Every branch is instantiated from a trusted source that is managed through Ethereum Distribution System \[[reference](?tab=t.0#heading=h.5fs1c1rdr94p)\], this provisions trust in the behaviour of leaves, and enables every branch to trust each other assuming distribution source is verified and trusted.

EDS distribution ensures that branch formation high level rules conform to protocol described in the Autonomous Competence Identification Paper (ACID) \[[reference](?tab=t.0#heading=h.w1t6hzufh6wv)\]. These rules ensure ability to continuously convert assets root on to leaves with having time dependency enabling runtime security even in case of root majority compromise with adversarial powers.
For a meritocratic organisation, the competition between adversaries is built in within the protocol and is coupled by anti-sybil nature of ACID protocol combined with its time invariant properties that allow dynamic coupling with any threats with clear heads up and response paths.

In most general case, the formation is conducted through fellowship formation through facilitating knowledge measurement via continuous voting proposing round robin setup \[[reference](?tab=t.0#heading=h.eem48f64s2s5)\]

## Fellowship Instances

Every trie node edge is represented by a Fellowship Instance: an intermediate state of participants transitioning their own weight from root in to leave. Fellows conviction is being tested out through the discussion with other members and at very minimum is constrained by time and base asset principal values.

### Fellowship Rank Token

Every connection between leaves can be represented as triple token system:

- **Root token:** Asset being converted into leave
- **Fellowship Rank token:** Asset that represents knowledge work recognition within peers going through the same process.
- **Leave token:** Managerial body of the autonomous organization representing the underlying protocol.

 Core principle is that by design, rank token can only be obtained by consuming utility token and issuing ranks in accordance with autonomous competence identification protocol which is elaborated in \[[ref](?tab=t.0#heading=h.w1t6hzufh6wv)\]. This framework ensures that any knowledge work conducted within a fellowship instance is a subject of same game theoretical assumptions and principal values, allowing calculating stakes.


Rank token is implemented as ERC1155 which is unique per specific underlying protocol and serves as knowledge work measurement which was conducted to *improve* *that underlying protocol specifications*. Token ID represents a quantised step (rank) of the bearer, which has exponential weight and is obtained by irreversibly spending Utility tokens and conforms with competence identification rules defined in \[[ref](?tab=t.0#heading=h.w1t6hzufh6wv)\] which imply that conversion is time and utility asset principal value defined AND forms a ranking ladder of competitive experts.

Additionally, this flow of assets enables continuous deflation force on utility asset supply, producing instead inflation of skilled labour which is convertible into governance power within the organization.

### Knowledge work as a service

**The reason for having a separate Rank representation instead of directly deriving governance power** is to keep concerns separate and achieve balance between the roles of participants. It signifies the right of a knowledge worker to become part of the leave community.

For already established holders within a leave community, fulfilling such a rights event means inflation and a decrease in their governance weights, which is a negative aspect for them.

Thus incentive exists for established holders to define protocol for services that can be offered by locking rank tokens tokens as Proof of Competence which act as an escrow. If the quality of services provided is deemed inappropriate, the rank token will be slashed, while established leave communities have game theoretic equilibria in providing fair escrow judging any dispute.

For example, assume a leave of organization is a security council. An experienced security expert with a proven track record of discussing security best practices and solutions with fellows may lock in his proof of competence in order to pause the protocol he thinks has critical vulnerability. The ability to do so may be solely based on the total value locked within his rank representation, as opposed to the risks of whistleblowing without good reason (incompetent action). The leave organization holders are in the best position to judge the legitimacy of the action since they are incentivized in two ways:

1. Slashing a fellow's token will decrease their governance inflation. It would also increase the reputation of their leave as competent and trustworthy, fighting off the incompetent actors.
2. Slashing a fellow token without good reason will drive the fellowship community away from their organization, reduce any potential organisations willing to accept such stake as legitimate, eventually decreasing the price of their leave representing asset.

Therefore, equilibrium is achievable, enabling production of decentralized autonomous services based on merit.

Similarly, whenever anyone wants to have service provided in an immediate, decentralized and autonomous manner, which requires knowledge work similar to specific Rank token competence described, they may require a specific level of competence of an agent.

#### Use in established organizations

Fellowship instances can be created literally for any underlying protocol that is expressed in tokenized utility token.
By configuring how particular allocation of tokens happens, such fellowship creators can define retention time of community conducted discussion expressed in his asset form as well as can set up a treasury for future fellowship communities to manage.


## Ranking Instance \- Round robin discourse medium

Fellowship rank token issuance is done through a ranking instance that facilitates improvement discourse. This improvement discourse (tournament) is implemented in the form of continuous voting proposal protocol \[[ref](?tab=t.0#heading=h.eem48f64s2s5)\] .

By participating in the discussion, fellows are able to establish parties that facilitate their alignment and allow them to identify the best delegates within a party.

Peeramind protocol ensures that utility spent on these discussions is converted into data availability quotas so that discussion storage space is provisioned for each proposal based on communities conviction towards it.

		Flow of funds from base asset through fellowship

In case of complex projects, requiring multiple contributions and support from various service providers for the fellowship instance itself, numerous base assets may be connected instead of one.
In such a case, the representation leave in fact represents a fusion of various unrelated organizations into one.

## Parental controls over accelerated decentralization

For each particular leave upon creation an ownership privilege is assigned, this ownership privilege allows for:

* Adding and removing base assets from fellowship instance participation costs
* Modifying Rank Token (ContractURI) Metadata.


The creation of a new leaf only requires defining new assets that represent knowledgeable agents. These new assets are derived from the base assets.

We do not make any assumptions about the type of governance structure that these derived leaves will have; this will be decided upon by the token holder community. The child organization could add additional wrappers and intermediate asset states for additional security.

When a new organization is formed, the owner should transfer the permission to modify Rank token URI to the child organization.

Controllers can also transfer the ability to remove or add base assets, or renounce this ability by assigning it to the zero address.

This process can be viewed as parental control, which allows for the gradual configuration of the organization.

## Interoperability and privacy

Being only a subject of base asset input and ACID protocol principal time-cost value requirements, every discussion is possible to rollup in form of trie or zero knowledge proof that show:

* Required signatures conforming with ACID protocol were defined and agreed upon
* Base assets were locked and distributed

These proofs are possible to implement within appchains or even private (enterprise blockchains), rolling proofs into a single Zero Knowledge proof allows to keep discussion subjects and items fully private and encapsulated within private environments while guaranteeing invariant state for any participant bridging assets out to public environment

Security of such communication could be fully trustless  enforced by combining existing bridges with additional requirements of peeramid network, verifying proofs of knowledge work actually being conducted on external layers

# Potential applications

## Community managed Autonomous portals

Let's consider a scenario where a Rank Token URI is associated with metadata representing:

* The meta-rules of a ranking instance
* A URI for a web portal hosted on decentralized storage (e.g., Swarm or IPFS)

In this case, community discussions aimed at enhancing the portal can be facilitated. By granting parental controls to a derived leave branch, the organization can automate listings within the interface using the continuous discussion results facilitated by the fellowship instance to list goods or services.

**Permissioned access to join the fellowship can be granted.** Requirements for joining can go beyond holding the base asset and may include digital signature verification or zero-knowledge proofs of membership within a specific participant set.

For instance, imagine residents of a district using the  [Reclaim Protocol](https://www.reclaimprotocol.org/) or [ZK email](https://prove.email/) to conduct zero-knowledge proofs on their utility bills. By proving the value of each utility bill linked to a postal index, users can tokenize their utility bill contribution within that specific postal index district.

Furthermore, by forming small groups (e.g., families or households) and engaging in discussions through a Fellowship Instance implemented as a continuous voting and proposal protocol \[[ref](?tab=t.0#heading=h.eem48f64s2s5)\], they can identify the most prominent voices and ideas. This creates a dynamic, ever-changing community that, while subject to constant inflation from ongoing utility bills, has a mechanism for identifying competence.

This community has the ability to manage the URI of the rank token URI itself, enabling them to express their collective decision by pointing to any resource that the community of utility payers deems most representative of their opinion at any given time.

## Employee Merit Recognition with Proof of Competence

Discussions on topics that are usually confidential in nature, such as improving a protocol or project management, can be facilitated internally within organizations through their own private peeramid network nodes. These organizations only need to introduce a base asset of discussion into their network to enable internal discussion without disclosing any information about the discussion itself.

When an employee wants to gain public recognition for their merit within the organization, they can simply publish their competence scores to the public ledger. If the organization didn't preemptively share the existence of these discussions and activate timelocks for principal time-value costs, the assets would be subject to a timelock to prevent governance quorum attacks. However, these assets would eventually become liquid.

Even before the timelock expires, this recognition can be used to publicly prove competence, allowing employees to bypass unnecessary HR tests and reference letters when seeking new employment.

## Proofs of private dataset

Let's consider a scenario where a group of actors collaborates to collect and refine a specific dataset composed of knowledge work. This dataset could be a curated collection of high-quality music or literature on a particular subject.

The series of proofs generated can attest that the group possesses the dataset that is ordered in agreed upon order, without revealing its contents. This public attestation can be utilized in a marketplace where the dataset is offered to potential buyers.

The group's rank tokens can serve as a stake during the sale. If the buyer finds the dataset doesn't meet the promised standards, a community of leave token holders can mediate and manage the escrow process.
This concept can be further elaborated by use of ZKML and privacy preserving AI computation. An AI model could be used by potential customers to validate quality of dataset and attest to quality of dataset without returning the dataset itself.

## Progressively decentralized organisations

The proposed leave structure can help any organization to form smaller, merit-based workgroups. This approach can solve the problems of DAO centralization by ensuring that voting power is influenced more by competence than by capital allocation.

### Bootstrapping new communities

The cost of taking part in fellowship instances is absolutely essential for compliance with and maintaining the high quality of service provided by the Peeramid Network, such as data availability of proposals.

To address the possibility that this creates challenges during the community's initial stages, when there is less certainty and value within the community, the ability to have an exponentially decaying function of the projected supply rate of the leave token is proposed.

This gives creators the ability to lessen the expenses for participants initially. As the organization matures, it can create robust safeguards against anyone attempting to disrupt the system.
