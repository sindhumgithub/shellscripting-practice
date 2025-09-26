#!/bin/bash

read -p "Please mention your filename:::" filename
read -p "Enter the output file::" output

if [ -e $filename ]; then
    echo "$filename exists.."
    grep -i "ERROR" "$filename" > "$output"
    if [ -s "$output" ]; then
        echo "Filtered content saved to $output"
        cat $output
    else 
        echo "NO ERRORS in $filename"
else
    echo "$filename DOES NOT exist"
fi
