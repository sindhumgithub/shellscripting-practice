#!/bin/bash

# Ask user for a filename
read -p "Enter a filename: " filename

# Check if the file exists
if [ -e "$filename" ]; then
    # Count number of lines
    lines=$(wc -l < "$filename")
    # Count number of words
    words=$(wc -w < "$filename")
    # Count number of characters
    chars=$(wc -m < "$filename")

    echo "File: $filename"
    echo "Number of lines: $lines"
    echo "Number of words: $words"
    echo "Number of characters: $chars"
else
    echo "Error: File $filename does not exist!"
    exit 1
fi
