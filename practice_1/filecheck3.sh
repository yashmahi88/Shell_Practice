#!/bin/bash

# Check if any arguments were provided
if [ "$#" -eq 0 ]; then
    echo "No files or directories provided."
    exit 1
fi

# Iterate over all arguments
for file in "$@"; do
    echo "Processing: $file"

    # Check if the file or directory exists
    if [ -e "$file" ]; then
        # Check if it is a directory
        if [ -d "$file" ]; then
            echo "$file is a directory."
        # Check if it is a regular file
        elif [ -f "$file" ]; then
            echo "$file is a regular file."
        else
            echo "$file is another type of file or special file."
        fi

        # Perform 'ls -l' on the file or directory
        ls -l "$file"
    else
        echo "$file does not exist."
    fi

    echo # Print a blank line for readability between files
done


