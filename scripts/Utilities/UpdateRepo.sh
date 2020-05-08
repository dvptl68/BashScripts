#!/bin/bash

if [ -d .git ]
then
  read -p "Enter the commit message: "  message
  git add .
  git commit -m "$message"
  git push
  echo "$(tput bold)Staged, committed, and pushed changes!$(tput sgr0)"
else
  echo "$(tput bold)You must run this script from a Git repository directory!$(tput sgr0)"
fi