#!/bin/bash

read -p "Please enter your content to create a file" filename
read -p "Enter the output file::" output

if [ -e $filename ]; then
    echo "$filename exists.."
    grep "ERROR" $filename 1> $output
    cat $output
else
    echo "$filename DOES NOT exist"
fi
