#!/bin/bash

found=false
for dir in scripts/*; do
    cd $dir
    for file in *; do
      if [ "${file,,}" = "${1,,}" ] || [ "${file,,}" = "${1,,}.sh" ]; then
        found="$dir/$file"
      fi
    done
    cd ..
    cd ..
done

echo $found