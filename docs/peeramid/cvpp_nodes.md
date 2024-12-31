# CVPP Nodes

CVPP Nodes enforce rules of continous voting proposing protocol [CVPP](../cvpp.md)

Every node is described by a signing key, allowing node to sign messages and verify signatures, acting as middleman who is attesting for data integrity.


## Process of CVPP Node

1. When CVPP party is started, CVPP node MUST issue list of signed encrypted messages for each particular participant. This list is used by participants to decode their individual salt issued by CVPP node to them. This encrypted salt, acts as a shared secret between CVPP node and participant
2. When Participant submits a proposal, or a vote, they must send it to CVPP node combined with this salt and encrypted with CVPP node public key.
3. CVPP node decrypts contents of proposal or vote, validates that it corresponds to rules, whatever these may be for a particular instance of CVPP.
4. CVPP then signs that encrypted messsage, publcly attesting to that it corresponds to rules, whatever these may be for a particular instance of CVPP and submits them on to the chain.
5. When the voting period ends, CVPP node will publish list of all salts, together with new salts for a next round, therefore allowing participants to verify that data integrity and continuity of the protocol while also creating new proposals and votes.
6. If there may is case that CVPP node denies any of the messages, and participant does not agree to that, mediation is possible by publishing salt and decrypting proposal or vote. 