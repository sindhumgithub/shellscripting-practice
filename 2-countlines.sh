#!/bin/bash

read -p "Please enter your content to create a file" filename1
cat > $filename1
echo "Content has been saved to $filename1"

read -p "Please enter a filename to check the word count" filename2

if [ -e $filename2 ]; then        # -e indicates whether the file is existing or not
    echo "File $filename2 exists"
    result1=$(wc -l < $filename2)
    echo "The number of lines in a file is:" $result1
    result2=$(wc -w < $filename2)
    echo "The number of words in a file is:" $result2
    result3=$(wc -c < $filename2)
    echo "The number of characters in a file is:" $result3
    exit 0
else
     echo "File $filename2 does not exists"
     exit 1
fi