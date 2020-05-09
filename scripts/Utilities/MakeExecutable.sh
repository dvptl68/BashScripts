#!/bin/bash

find . -type f -iname "*.sh" -exec chmod +x {} \;
echo "Made all script files executable."