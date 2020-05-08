#!/bin/bash

if [ -d .git ]
then
  git pull
else
  echo "You must run this script from a Git repository directory!"
fi