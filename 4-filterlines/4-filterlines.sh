#!/bin/bash

read -p "Please mention your filename:::" filename
read -p "Enter the output file::" output

if [ -e $filename ]; then
    echo "$filename exists.."
    grep "ERROR" $filename 1> $output
    cat $output
else
    echo "$filename DOES NOT exist"
fi
