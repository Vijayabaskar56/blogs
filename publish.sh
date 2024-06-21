#!/bin/bash

# Ensure the script stops if there is an error
set -e

echo
echo "Building the site with Hugo..."
echo
hugo -t hugo-theme-console

echo "Adding changes in the public directory..."
cd public
git add .

echo "Committing changes in the public directory..."
git commit -m 'FUN: Publishing new Post'
echo

echo "Pushing changes to the GitHub repository for the public directory..."
git push origin main
echo

cd ..

echo "Adding changes in the project root directory..."
git add .

echo "Committing changes in the project root directory..."
git commit -m 'FUN: Publishing new Post'
echo

echo "Pushing changes to the GitHub repository for the project root directory..."
git push origin main
echo
echo "Blog post published successfully!"

# End of script
