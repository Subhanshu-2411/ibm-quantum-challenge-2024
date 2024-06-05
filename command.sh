#!/bin/bash

# Enable exit on error
set -e

# Change to the directory of the script
cd "$(dirname "$0")"

# Add all changes to git
git add .

# Commit the changes with the first argument as the message
git commit -m "$1"

# Push the changes to the remote repository
git push

# Checkout the main branch
git checkout main

# Merge the working branch into the main branch
git merge working

# Push the merged changes to the remote repository
git push

# Checkout the working branch
git checkout working

# Pause (not typically needed in bash scripts, so this is just to mimic 'pause' in batch)
read -p "Press any key to continue..."
