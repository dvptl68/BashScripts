#!/bin/bash

echo "This script will make all .sh files in this directory and its child directories executable../scri"

find . -type f -iname "*.sh" -exec chmod +x {} \;