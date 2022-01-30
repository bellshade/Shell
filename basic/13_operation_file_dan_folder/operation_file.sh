#!/bin/bash

echo -e "Enter Your File : \c"
read file_name

if [[ -f $file_name ]]
then
    echo "File Found"
else
    echo "File Not Found"
fi
