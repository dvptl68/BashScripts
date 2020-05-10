#!/bin/bash

n=-1
valid=false
until [ "$valid" = "true" ]; do
  read -p "Enter a starting number: "  n
  if [ "$n" == "" ]; then
    echo "You must enter a positive integer!"
  else
    if ! [[ "$n" =~ ^[0-9]+$ ]]; then
      echo "You must enter a positive integer!"
    else
      valid=true
    fi
  fi
done

echo -n $n
while [ $n -gt 1 ]; do
  echo -n ", "
  if [ "$(($n%2))" = "0" ]; then
    ((n/=2))
  else
    ((n*=3))
    ((n++))
  fi
  echo -n $n
done