#!/bin/bash

# Taking the input from user/keyboard
read -p "Enter a filename" filename
echo "Please enter your content now ........"
cat > $filename
echo "Content has been saved to $filename"
cat $filename

#Checking whether the file exist or not
if [ -e $filename ]; then
    echo "File $filename exists"
    result1=$(wc -l < $filename)
    echo "The number of lines in a file is:" $result1
    result2=$(wc -w < $filename)
    echo "The number of words in a file is:" $result2
    result3=$(wc -c < $filename)
    echo "The number of lines in a file is:" $result3
    exit 0
else
     echo "File $filename does not exists"
     exit 1
fi




  