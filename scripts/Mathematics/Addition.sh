#!/bin/bash

num=1
i=0
until [ "$num" = "" ]; do
  read -p "Enter any number (or nothing to quit):"  num
  if [ "$num" != "" ]; then
    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
      echo "You must enter an integer!"
    else
      numbers[i]=$num
      ((i++))
    fi
  fi
done

length=${#numbers[@]}
((length--))
for j in $(seq 0 $length); do
  ((total+=numbers[$j]))
  echo -n ${numbers[$j]}
  if [ "$j" != "$length" ]; then
    echo -n " + "
  fi
done
echo " = $total"