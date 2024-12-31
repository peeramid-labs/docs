# Continuous Voting Proposing Protocol

This protocol is a superset of all known voting systems and advances in traditional governance systems.

In brief, CVPP protocol functions as follows:

* **Proposal Submission**: Proposers submit their proposals with the content encrypted while their identities remain visible. This approach ensures transparency in knowing who is submitting, but removes bias based on proposal content.
* **Proposal Shuffle and Reveal**: After the submission deadline, proposals are decrypted and revealed without disclosing proposers' identities. This ensures voting is based purely on the merit of the proposals, eliminating bias towards proposers.
* **Voting**: During the voting phase, votes remain private. Both the voter and the multi-party protocol managing the votes can identify which proposal belongs to which voter, ensuring voters cannot vote for themselves.
* **Final Reveal**: Once the voting period concludes, the proposers' identities are revealed together with all of the votes, the proposer of the winning proposal may be awarded.
* P**rocess repeats**: Until finalization condition is met, process repeats or just holds in case of finalization requirement is time spending constraint.
![image](https://github.com/user-attachments/assets/5ff6bdc8-d83f-4f24-861d-725426942243)


## Whitepaper

For more details please see [CVPP whitepaper](https://peeramid.infura-ipfs.io/ipfs/QmVY86rL3Y5bJfLDkbeb2EUa4TfcEiZbHe186DquDmJXQJ   )

## CVPP Nodes

CVPP nodes' purpose is ensuring Unbiased Proposal Evaluation and Voting facilitated through Rankify interfaces. They ensure a Secure Protocol for Transparent and Fair Decision-Making in Collaborative Environments

These nodes are to be implemented as TEE and MPC technology combination and are seen as most secure to ensure this communication in the most secure manner.
Specific network segments may require game master signatures, allowing fully autonomously manage the game master technology selection.

For further reading about CVPP Nodes refer to [Peeramid Network](./peeramid-network.md)