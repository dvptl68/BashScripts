#!/bin/bash

if [ -d .git ]
then
  read -p "Enter the commit message: "  message
  git add .
  git commit -m "$message"
  git push
  echo "Staged, committed, and pushed changes!"
else
  echo "You must run this script from a Git repository directory!"
fi