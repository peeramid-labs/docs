# Peeramid Documentation

This repository contains the documentation for the Peeramid project, built using MkDocs.

## Project Structure

```
docs/
├── docs/          # Documentation source files
├── css/           # Custom CSS styles
├── bin/           # Scripts and binaries
├── site/          # Built documentation site
└── mkdocs.yml     # MkDocs configuration
```

## Setup

1. Create and activate a virtual environment:
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Unix/macOS
   ```

2. Install Python dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Install Node.js dependencies:
   ```bash
   pnpm install
   ```

## Development

To serve the documentation locally:

```bash
mkdocs serve
```

This will start a development server at `http://127.0.0.1:8000`.

## Deployment

The documentation can be deployed using the provided script:

```bash
./deploy-docs.sh
```

## Scripts

- `copy-contract-docs.sh`: Script for copying contract documentation
- `deploy-docs.sh`: Script for deploying the documentation site

## Requirements

- Python 3.x
- Node.js
- pnpm package manager

For detailed Python dependencies, see `requirements.txt`.
