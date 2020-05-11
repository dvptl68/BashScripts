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
  i=2
  while [ ${numbers[$(($i-1))]} -lt $n ]; do
    numbers[$i]=$((${numbers[$(($i-1))]}+${numbers[$(($i-2))]}))
    ((i++))
  done
  length=${#numbers[@]}
  ((length--))
  if [ "${numbers[$length]}" = "$n" ]; then
    echo "$n is a Fibonacci number! The sequence is: "
    ((length--))
    for j in $(seq 0 $length); do
      echo -n "${numbers[$j]}, "
    done
    ((length++))
    echo -n "${numbers[length]}"
  else
    echo -n "$n is not a Fibonacci number"
  fi
fi