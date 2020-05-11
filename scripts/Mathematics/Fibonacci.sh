#!/bin/bash

n=-1
valid=false
until [ "$valid" = "true" ]; do
  read -p "Enter a number to test: "  n
  if [ "$n" == "" ] || [ "$n" == "1" ]; then
    echo "You must enter a positive integer!"
  else
    if ! [[ "$n" =~ ^[0-9]+$ ]]; then
      echo "You must enter a positive integer!"
    else
      valid=true
    fi
  fi
done

found=false
if [ "$n" = "1" ]; then
  echo $n
  found=true
else
  numbers[0]=1
  numbers[1]=1
  echo -n "${numbers[0]}, ${numbers[1]}"
  i=2
  while [ ${numbers[$(($i-1))]} -lt $n ]; do
    numbers[$i]=$((${numbers[$(($i-1))]}+${numbers[$(($i-2))]}))
    echo -n ", ${numbers[$i]}"
    ((i++))
  done
  
fi