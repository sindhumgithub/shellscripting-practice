#!/bin/bash

read -p "Enter your path to change::"  LOC    #Passing path in command line argument ex:  /var/log

if [ -e $LOC ]; then
    echo "$LOC exists.."
else 
    echo "$LOC DOES NOT exist.."
fi

ls -ltrh $LOC

read -p "Enter filename::" FILENAME
RESULT=$LOC/$FILENAME

if [ -e $RESULT ]; then
    echo "$FILENAME exists..."
    echo "replacing the content inside a $FILENAME file"
    sed -i s/FOO/BAR/g  $RESULT
    echo "Replaced with latest content in $FILENAME :::"
    cat $RESULT
else
    echo "$FILENAME file DOES NOT found in $LOC"
fi 

    