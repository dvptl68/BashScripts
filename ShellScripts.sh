#!/bin/bash

#Make all script files executable and print all script files
./scripts/Utilities/MakeExecutable.sh
./scripts/Utilities/PrintAll.sh

#Loop until nothing is entered
read -p "Enter the name of the file you would like to execute (or nothing to quit): "  fileName
until [ -z "$fileName" ]; do
  found=$(./scripts/Utilities/FindFile.sh $fileName)
  if [ "$found" = "false" ]; then
    echo "You must enter a valid file name!"
  else
    echo $found
  fi
  echo
  read -p "Enter the name of the file you would like to execute (or nothing to quit): "  fileName
done
