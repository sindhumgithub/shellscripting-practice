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
    result=$(wc -l $filename)
    echo "The word count is:" $result
else
     echo "File $filename does not exists"
fi




  