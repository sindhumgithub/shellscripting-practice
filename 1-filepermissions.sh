#!/bin/bash

read -p "Please enter your filename::" filename
echo "Your filename is:: " $filename

if [ -e $filename ]; then   #-e file exists or not exists.
    echo "$filename file exists"
if [ -r $filename ]; then   #  -r indicates whether the file is readable or not.
    echo "$filename is readable"
else
    echo "$filename is NOT readable"
fi

if [ -w $filename ]; then 
    echo "$filename file is writable"
else
    echo "$filename file NOT writable"
fi

if [ -x $filename ]; then
    echo "$filename file is executable"
else
    echo "$filename is NOT executable"
fi

else
    echo "$filename DOES NOT exist"
fi



