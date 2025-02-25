# SDK

In order to ease development and client side operations we provide sdk:

## Pre-requisites:

- Node `v22.12.0` or higher
- `viem=^2.22.8"`

## Installation

```bash
# Using npm
npm install @peeramid-labs/sdk

# Using yarn
yarn add @peeramid-labs/sdk

# Using pnpm
pnpm add @peeramid-labs/sdk
```

## CLI Usage

The SDK includes a command-line interface for interacting with Peeramid contracts:

```bash
# Set up environment variables
export RPC_URL="your-rpc-url"
export PRIVATE_KEY="your-private-key"

# List available commands
peeramid --help

# Examples:
peeramid distributions list
peeramid fellowship create
peeramid instances list
peeramid multipass domains create
```

## Using PlayerClass


```typescript
import { RankifyPlayer } from "@peeramid-labs/sdk"

const player = new RankifyPlayer({
    publicClient,
    walletClient,
    chainId,
    instanceAddress,
    account
    })
```