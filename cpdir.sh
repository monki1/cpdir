#!/bin/bash

# 1. Get directory path
dir_path=$1

# Start with an empty clipboard_string
clipboard_string=""

# 2. Iterate over each file in the directory
for file_path in "$dir_path"/*; do
  file_name=$(basename "$file_path")
  file_content=$(cat "$file_path")
  formatted_output="FILENAME: ${file_name} CONTENT: ${file_content}"
  clipboard_string+=$'\n'"$formatted_output"
done

# 3. Copy to clipboard using copy.sh
echo "$clipboard_string" | ./copy.sh

# Print the output
echo "$clipboard_string"
