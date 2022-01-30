#!/bin/bash

permission_file(){
    echo -e "Masukan File : \c"
    read file_name
    
    if [[ -f $file_name ]]
    then
        echo "Permission (ex. 777): "
        read permissions
        chmod $permissions $file_name
    else
        echo "Not Found"
    fi
}

permission_file
