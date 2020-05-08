#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

for dir in scripts/*; do
    cd $dir
    echo "${bold}${PWD##*/}${normal}"
    for file in *; do
      echo $file
    done
    echo
    cd ..
    cd ..
done