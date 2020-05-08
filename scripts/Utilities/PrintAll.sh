#!/bin/bash

echo
for dir in scripts/*; do
    cd $dir
    echo "$(tput bold)${PWD##*/}$(tput sgr0)"
    for file in *; do
      echo $file
    done
    echo
    cd ..
    cd ..
done