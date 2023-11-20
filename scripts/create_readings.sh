#!/bin/bash

# Check if an input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

input_file=$1

# Read each line from the file
while IFS= read -r line; do
    # Extract the prefix (e.g., MT001-0001)
    prefix=$(echo "$line" | cut -d'|' -f1)
    # Strip off the prefix and extract the content up to the second '|'
    content=$(echo "$line" | cut -d'|' -f2)
    # Create a directory for output files if it doesn't exist
    mkdir -p ./readings
    # Write the content to a file named after the prefix
    echo "$content" > "./readings/$prefix.txt"
done < "$input_file"
