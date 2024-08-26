#!/bin/bash
brew --version

ruby -v
# Bundler version, it is part of Ruby install
bundle -v

# Show active Python version, it needs to be 3.10 or better
python --version

# Show Jupyter packages, nbconvert needs to be in the list of installed
jupyter --version
jupyter kernelspec list  

git config --global --list


source /tmp/variables.sh

echo "Project dir: $project_dir"
echo "Project: $project"
echo "Repo: $project_repo"