#!/bin/bash

read -p "Enter a string: "  string
if [ "$(echo $string | rev)" = "$string" ]; then
  echo "${string} is a palindrome"
else
  echo "${string} is not a palindrome"
fi