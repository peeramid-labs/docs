# Creating new MAO

In order to instantiate the MAO distribution, you don't need to deploy a thing. You just need to call the `instantiate` function of the the [PeeramidLabsDistributor.sol](./src/distributors/PeeramidLabsDistributor.sol) contract and specify proper distribution Id and arguments.
```ts
import {  MAODistribution } from 'rankify-contracts/types';
const distributorArguments: MAODistribution.DistributorArgumentsStruct = {
        DAOSEttings: {
          daoURI: 'https://example.com/dao',
          subdomain: 'example',
          metadata: ethers.utils.hexlify(ethers.utils.toUtf8Bytes('metadata')),
          tokenName: 'tokenName',
          tokenSymbol: 'tokenSymbol',
        },
        ACIDSettings: {
          RankTokenContractURI: 'https://example.com/rank',
          gamePrice: 1,
          joinGamePrice: 1,
          maxPlayersSize: 16,
          maxTurns: 1,
          metadata: ethers.utils.hexlify(ethers.utils.toUtf8Bytes('metadata')),
          minPlayersSize: 4,
          paymentToken: rankify.address,
          rankTokenURI: 'https://example.com/rank',
          timePerTurn: 1,
          timeToJoin: 1,
          voteCredits: 14,
        },
      };
const data = ethers.utils.defaultAbiCoder.encode(
        [
          'tuple(tuple(string daoURI, string subdomain, bytes metadata, string tokenName, string tokenSymbol) DAOSEttings, tuple(uint256 timePerTurn, uint256 maxPlayersSize, uint256 minPlayersSize, uint256 timeToJoin, uint256 maxTurns, uint256 voteCredits, uint256 gamePrice, address paymentToken, uint256 joinGamePrice, string metadata, string rankTokenURI, string RankTokenContractURI) ACIDSettings)',
        ],
        [distributorArguments],
      );
      const distributorsDistId = process.env.DISTRIBUTOR_DIST_ID;
      const tx = await distributorContract.instantiate(distributorsDistId, data);

```


## Getting DistributorsDistId

While in development, simplest way to get `distributorsDistId` for MAO distribution is to call `getDistributions` at `PeeramidLabsDistributor` contract and look for. It's likely to be only one.


!!! NOTE

    We will host a public API and upgrade our SDK to get the list of distributions soon.