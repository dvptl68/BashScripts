#!/bin/bash


num=-1
valid=false
until [ "$valid" = "true" ]; do
  read -p "How many points should be used in the estimation? "  num
  if [ "$num" == "" ]; then
    echo "You must enter a positive integer!"
  else
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
      echo "You must enter a positive integer!"
    else
      valid=true
    fi
  fi
done