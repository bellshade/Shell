#!/bin/bash

echo -e "Enter Number To Checking : \c"
read number
function prime(){
    result=`factor $number | wc -w`
    if [[ $result -eq 2 ]]
    then
        echo "$number bilangan prima"
    else
        echo "$number bukan bilangan prima"
    fi
}

prime
