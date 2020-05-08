#!/bin/bash

found=false
for dir in scripts/*; do
    cd $dir
    for file in *; do
      if [ "$file" = "$1" ]; then
        found=true
      fi
    done
    cd ..
    cd ..
done

echo $found