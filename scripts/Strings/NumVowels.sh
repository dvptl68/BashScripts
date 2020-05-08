#!/bin/bash

read -p "Enter a string: "  string
string="${string,,}" #change input to all lowercase
num=0
for i in $(seq 1 ${#string}); do
  s="${string:i-1:1}"
  if [ "$s" = "a" ] || [ "$s" = "e" ] || [ "$s" = "i" ] || [ "$s" = "o" ] || [ "$s" = "u" ]; then
    ((num++))
  fi
done
echo $num