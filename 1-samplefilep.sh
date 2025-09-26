#!/bin/bash

filename=$1

if [ -e $filename ]; then   #-e file exists or not exists.
    echo "$filename file exists"
if [ -r $filename ]; then   #  -r indicates whether the file is readable or not.
    echo "$filename is readable"
else
    echo "$filename is NOT readable"
fi

if [ -w $filename ]; then     #  -w incidates whether the file is writable or not.
    echo "$filename file is writable"
else
    echo "$filename file NOT writable"
fi

if [ -x $filename ]; then  #  -x incidates whether the file is executable or not.
    echo "$filename file is executable"
else
    echo "$filename is NOT executable"
fi

else
    echo -e "$filename DOES NOT exist"
fi



