#!/bin/bash
R="\e[31m"
G="\e[32m"
filename=$1

if [ -e $filename ]; then   #-e file exists or not exists.
    echo -e "$G $filename file exists $N"
if [ -r $filename ]; then   #  -r indicates whether the file is readable or not.
    echo -e "$G $filename is readable $N"
else
    echo -e "$R $filename is NOT readable $N"
fi

if [ -w $filename ]; then     #  -w incidates whether the file is writable or not.
    echo -e "$G $filename file is writable $N"
else
    echo -e "$R $filename file NOT writable $N"
fi

if [ -x $filename ]; then  #  -x incidates whether the file is executable or not.
    echo -e "$G $filename file is executable $N"
else
    echo -e "$R $filename is NOT executable $N"
fi

else
    echo -e "$R $filename DOES NOT exist $N"
fi



