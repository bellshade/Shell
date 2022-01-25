#!/bin/bash

genap(){
    for i in {1..50}
    do
        if (( $i%2 == 0 ))
        then
            echo "Ini adalah Genap : $i"
        else
            echo ""
        fi
    done
}

genap
