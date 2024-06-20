#!/bin/bash

# Ensure the script stops if there is an error
set -e

# Step 1: Build the site with Hugo
echo "Building the site with Hugo..."
hugo -t hugo-theme-console

# Step 2: Add changes in the public directory
echo "Adding changes in the public directory..."
cd public
git add .

# Step 3: Commit changes in the public directory
echo "Committing changes in the public directory..."
git commit -m 'FUN: Publishing new Post'

# Step 4: Push changes to the GitHub repository for the public directory
echo "Pushing changes to the GitHub repository for the public directory..."
git push origin main

# Step 5: Move back to the project root directory
cd ..

# Step 6: Add changes in the project root directory
echo "Adding changes in the project root directory..."
git add .

# Step 7: Commit changes in the project root directory
echo "Committing changes in the project root directory..."
git commit -m 'FUN: Publishing new Post'

# Step 8: Push changes to the GitHub repository for the project root directory
echo "Pushing changes to the GitHub repository for the project root directory..."
git push origin main

echo "Blog post published successfully!"

# End of script
