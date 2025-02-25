# Remove old directories if they exist
rm -rf docs/rankify
rm -rf "docs/Ethereum Distribution System"

# Create target directories if they do not exist
mkdir -p docs/rankify
mkdir -p "docs/Ethereum Distribution System"

# Function to process markdown files and remove excessive type information
process_md_files() {
    find "$1" -name "*.md" -type f -exec sh -c '
        # Create a temporary file
        temp_file=$(mktemp)

        # Process the file
        awk '\''
            # Skip type declaration sections
            /^#### Type declaration/ { skip=1; next }
            /^###/ { if (skip) skip=0 }
            skip { next }

            # Skip implementation sections
            /^#### Implementation of/ { skip=1; next }
            /^###/ { if (skip) skip=0 }
            skip { next }

            # Simplify Promise types
            {
                gsub(/`Promise<Log<bigint,[^`]*>`/, "`Promise<Log>`")
                gsub(/`Promise<[^`]*>`/, "`Promise<any>`")
                print
            }
        '\'' "$1" > "$temp_file"

        # Replace original file with processed content
        mv "$temp_file" "$1"
    ' sh {} \;
}

# Create symbolic links with filtered content
cp -r node_modules/rankify-contracts/docs/contracts/interfaces/* docs/rankify
cp -r node_modules/rankify-contracts/docs/contracts/facets/* docs/rankify
cp -r node_modules/rankify-contracts/docs/contracts/tokens/* docs/rankify
cp -r node_modules/rankify-contracts/docs/contracts/distributions/* docs/rankify
cp node_modules/rankify-contracts/docs/contracts/DAODistributor.md docs/rankify/
cp -r node_modules/@peeramid-labs/eds/docs/contracts/interfaces/* "docs/Ethereum Distribution System"
cp -r node_modules/@peeramid-labs/multipass/docs/contracts/interfaces/* "docs/Multipass.md"
# cp -r node_modules/@peeramid-labs/sdk/docs/* "docs/sdk"

# Process the copied files to reduce size
process_md_files "docs/rankify"
process_md_files "docs/Ethereum Distribution System"
# process_md_files "docs/sdk"
