#!/bin/bash

# Determine the operating system
os_name=$(uname)

# Read from stdin and copy to clipboard based on OS
if [[ "$os_name" == "Darwin" ]]; then
  # Mac OS
  pbcopy
elif [[ "$os_name" == "Linux" ]]; then
  # Linux
  xclip -selection clipboard
else
  echo "Unsupported OS: $os_name"
  exit 1
fi
