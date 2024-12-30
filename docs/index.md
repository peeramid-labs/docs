# Getting started

The Rankify App, developed on the Peeramid Network, is a decentralized application interface that streamlines the user experience of Distributed Ledger Technology. It provides a user-friendly interface for discussions and decision-making using [continuous voting proposing protocol (CVPP)](./cvpp.md). For any kind of application that involves measuring knowledge work contribution, including project management, gaming, and community engagement. Users do not need to interact directly with Distributed Ledger Technology and can be abstracted from it through any interface provider.

## **Problem Statement**

> “*Quot homines tot sententiae*” — so many men, so many opinions.

Social coordination is one of the greatest challenges for organizations and communities today. While success depends on effective collaboration, many groups struggle to channel diverse opinions into unified, productive action.

Studies from Gallup\[[1](https://www.gallup.com/workplace/349484/state-of-the-global-workplace.aspx)\] and McKinsey\[[2](https://www.mckinsey.com/~/media/mckinsey/mckinsey%20global%20institute/our%20research/performance%20through%20people%20transforming%20human%20capital%20into%20competitive%20advantage/mgi-performance-through-people-full-report-vf.pdf)\]\[[3](https://www.mckinsey.com/~/media/mckinsey/business%20functions/people%20and%20organizational%20performance/our%20insights/the%20state%20of%20organizations%202023/the-state-of-organizations-2023.pdf)\] show that poor leadership and lack of trust lead to low morale, disengagement, and high turnover. Similar challenges appear in decentralized systems like DAOs,\[[4](https://arxiv.org/abs/2204.01176)\]\[[5](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4441178)\] where low participation rates, misaligned incentives, and governance risks like quorum attacks hinder progress.

Existing solutions, whether organizational structures or AI tools, fall short. Organizations relying on human-led systems face biases and inefficiency, while purely AI-driven approaches lack the trust and adaptability needed for real-time decision-making. These gaps reveal the need for a new approach that balances transparency, trust, and collaboration.


## Rankify overview

Rankify combines blockchain, gamified decision-making, and AI agents to create a trust-driven and merit-based collaboration environment. By leveraging distributed ledger technology, it ensures all contributions are securely recorded and transparent, fostering trust between participants.

The platform facilitates collaboration through structured discussions and a gamified scoring system. Facilitators start by asking a question or problem (e.g., "What should our sprint priorities be?" or "How do we improve team engagement?" or "What's the best Spotify music?"). Participants form groups for discussion rounds. Each may send a proposal evaluated anonymously by others, who score the suggestions.

Discussions are broken into rounds, allowing participants to refine ideas and improve proposals based on feedback. The scoring process is anonymous during voting to minimize bias but fully disclosed after each round to encourage learning and collaboration via [CVPP](https://peeramid.infura-ipfs.io/ipfs/QmVY86rL3Y5bJfLDkbeb2EUa4TfcEiZbHe186DquDmJXQJ).

Rankify’s issues rewards based on [ranking ladder system via Autonomous Competence Identification](https://peeramid.infura-ipfs.io/ipfs/QmfZmHBPtenP3pcuQy7xwyrA6RtnPfRWUDi5iV1pgUtr2b) to recognize active participation and merit. Contributors who propose strong ideas or provide constructive feedback are recognized, creating a leaderboard of high-performing solutions and participants. This system fosters a meritocratic culture where efforts are rewarded transparently.

When a group adds AI agents, it creates a benchmark for whether the model represents group opinions. After discussion comes to its end, decisions can be based on the highest-scoring solution, expertise authority, or an AI summary refining the top quartile of proposals.

Rankify ensures fair recognition of contributions and transparent decisions by using blockchain to secure records. This combination of gamification, feedback, and trust-building technology makes it ideal for organizations seeking to improve coordination, engagement, and decision-making.

## Who is Rankify for?

Rankify creates measurable value by enhancing community engagement, streamlining decision-making, and fostering a meritocratic culture where contributions are recognized. By reducing employee turnover and increasing job satisfaction, it builds trust and cohesion within teams and communities.

The platform’s ability to integrate AI agents into decision-making processes opens new possibilities for automated, efficient governance in organizations. This makes Rankify impactful for:

* Companies and collectives looking to strengthen their team cooperation
- DAOs
- non-profits
- corporate governance
- and industries exploring GameFi
- Multiplayer gaming
- SocialFi.

With Rankify, teams achieve smarter, more inclusive outcomes while fostering strong, collaborative relationships.


## Applications possible to build


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

### Online Education and Skill Assessment:

The Protocol may be applied to online education platforms to assess and certify learners’ skills. They can demonstrate their knowledge and proficiency by participating in competence tournaments or challenges. The ranking system provides a verifiable and transparent way to assess skills, enabling learners to showcase
their expertise to potential employers or educational institutions.

### Agent empathy training
The Protocol establishes a framework for rating participants and ideas, decoupling evaluation from personal biases. Its continuous feedback loop, utilizing previous round results, fosters deeper alignment among participants and cultivates empathy as they refine their understanding of collective preferences. This property holds significant value for [CyberPhysical-Social Systems (CPSS)](https://www.researchgate.net/publication/309319118_Steps_toward_Parallel_Intelligence). Beyond interpersonal empathy, the protocol generates feedback
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

