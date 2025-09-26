#!/bin/bash

read -p "Enter your path to change::"  PATH    #Passing path in command line argument ex:  /var/log

if [ -e $PATH ]; then
    echo "$PATH exists.."
else 
    echo "$PATH DOES NOT exist.."
fi

ls -ltrh $PATH

read -p "Enter filename::" filename
if [ -e $filename ]; then
    echo "$filename exists..."
    echo "replacing the content inside a $filename file"
    RESULT=$(sed -i s/FOO/BAR/g)
    echo "Replaced with latest content in $filename :::" $RESULT
else
    echo "$filename file DOES NOT found...."

    