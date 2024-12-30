# Continuous Voting Proposing Protocol

This protocol is a superset of all known voting systems and advances in traditional governance systems.

In brief, CVPP protocol functions as follows:

* **Proposal Submission**: Proposers submit their proposals with the content encrypted while their identities remain visible. This approach ensures transparency in knowing who is submitting, but removes bias based on proposal content.
* **Proposal Shuffle and Reveal**: After the submission deadline, proposals are decrypted and revealed without disclosing proposers' identities. This ensures voting is based purely on the merit of the proposals, eliminating bias towards proposers.
* **Voting**: During the voting phase, votes remain private. Both the voter and the multi-party protocol managing the votes can identify which proposal belongs to which voter, ensuring voters cannot vote for themselves.
* **Final Reveal**: Once the voting period concludes, the proposers' identities are revealed together with all of the votes, the proposer of the winning proposal may be awarded.
* P**rocess repeats**: Until finalization condition is met, process repeats or just holds in case of finalization requirement is time spending constraint.
![image](https://github.com/user-attachments/assets/5ff6bdc8-d83f-4f24-861d-725426942243)

## CVPP Nodes

CVPP nodes' purpose is ensuring Unbiased Proposal Evaluation and Voting facilitated through Rankify interfaces. They ensure a Secure Protocol for Transparent and Fair Decision-Making in Collaborative Environments

These nodes are to be implemented as TEE and MPC technology combination and are seen as most secure to ensure this communication in the most secure manner.
Specific network segments may require game master signatures, allowing fully autonomously manage the game master technology selection.

## Possible Applications


### Traditional voting
The protocol accommodates various voting setups. It can handle traditional voting cases of few agenda items and many voters by allowing only X of N to submit proposals.

### Conviction voting
In conviction voting system weights increase over multiple rounds if voted for the same proposal.

### Conviction election
A leader can continuously propose something chosen by the group may be seen as a competent delegate. It allows extending ”conviction” with a quadratic voting system.

### Non-private proposing and/or voting
Implementing non-private voting is straightforward as agents (or moderators) may announce their proposal or vote contents at any time thyself. However if larger consensus is about keeping this data private, the social judegement is expected to downvote such an actor.

### Academic Research and Peer Review:
The traditional peer-review process often suffers from biases, delays, and lack of transparency. Protocol can address these issues by creating a decentralized system.
Researchers can submit their work, review others’ submissions, and receive ratings based on the quality and thoroughness of their reviews. This approach
leads to faster, more objective, and transparent peer review, improving the quality and credibility of academic research.

### Online Education and Skill Assessment: The

Protocol may be applied to online education platforms to assess and certify learners’ skills. They can demonstrate their knowledge and proficiency by participating in competence tournaments or challenges. The ranking system provides a verifiable and transparent way to assess skills, enabling learners to showcase
their expertise to potential employers or educational institutions.
Agent empathy training protocol establishes a
framework for rating participants and ideas, decoupling evaluation from personal biases. Its continuous
feedback loop, utilizing previous round results, fosters deeper alignment among participants and cultivates empathy as they refine their understanding of
collective preferences.
This property holds significant value for CyberPhysical-Social Systems (CPSS)[13]. Beyond interpersonal empathy, the protocol generates feedback
and historical data to create robust, personalized
machine learning frameworks by benchmarking AI
agents in these tournaments.

### Decentralized charts
The first use case of the Protocol is to create a community-managed intents list that is a useful asset.
Just-in-time decision management. This protocol facilitates streamlined decision-making by obtaining the top-rated proposer and proposal just-intime through the protocol design. Collaborative Writing. Developers submit pull requests, vote on solutions, and iteratively refine the codebase and documentation by treating each round as a work cycle. The fixed cycle length ensures a strict deadline, promoting efficiency and focus. Assigning extra weight multipliers to later rounds acknowledges the cumulative improvement of code over time, enabling automatic merging of best solutions. It encourages participants to contribute new code and solutions rather than just reviewing, fostering a proactive and collaborative development environment.

### Early conflict prediction
By observing participant voting in a setup abstracting ideas from personalities, agent opinion misalignment can be detected early. This serves as a conflict prediction flag.

### Decentralized Autonomous Organizations
DAOs can facilitate subject-specific discussions, countering low participation rates and
turnover. Delegate finding Groups can facilitate a protocol to find a fair delegate with a framework that avoids halo effect problems and provides unbiased recognition to the successful member.