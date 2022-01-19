#!/bin/bash
num=1
until (( $num > 15 ))
do
    echo "Result Is : $num"
    (( num++ ))
done
