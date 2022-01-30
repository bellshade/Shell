#!/bin/bash

echo -e "Enter Your Folder : \c"
read folder_name

if [[ -d $folder_name ]]
then
    echo "Folder Found"
else
    echo "Folder Not Found"
fi
