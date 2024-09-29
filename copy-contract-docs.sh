# Remove old directories if they exist
rm -rf docs/rankify
rm -rf "docs/Ethereum Distribution System"

# Create target directories if they do not exist
mkdir -p docs/rankify
mkdir -p "docs/Ethereum Distribution System"

# Create symbolic links
cp -r node_modules/rankify-contracts/docs/contracts/interfaces/* docs/rankify
cp -r node_modules/@peeramid-labs/eds/docs/contracts/interfaces/* "docs/Ethereum Distribution System"