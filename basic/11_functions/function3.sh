#!/bin/bash

isNum=50
function ganjil(){
    for (( i=0; i<=isNum; i++))
    do
        if (( $i%2 != 0 ))
        then
            echo "Angka Ganjil : $i"
        else
            echo
        fi
    done
}

ganjil
