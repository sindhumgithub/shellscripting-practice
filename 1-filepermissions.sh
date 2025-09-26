#!/bin/bash
filename=$1

read -p "Please enter your filename::" $filename
echo "Your filename is:: " $filename

if [ -e $filename ]; then   #-e file exists or not exists.
    echo "$G $filename file exists $N"
if [ -r $filename ]; then   #  -r indicates whether the file is readable or not.
    echo "$G $filename is readable $N"
else
    echo "$R $filename is NOT readable $N"
fi

if [ -w $filename ]; then     #  -w incidates whether the file is writable or not.
    echo "$G $filename file is writable $N"
else
    echo "$R $filename file NOT writable $N"
fi

if [ -x $filename ]; then  #  -x incidates whether the file is executable or not.
    echo "$G $filename file is executable $N"
else
    echo "$R $filename is NOT executable $N"
fi

else
    echo -e "$R $filename DOES NOT exist $N"
fi



