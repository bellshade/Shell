#!/bin/bash

array=(5 2 1 7 3 9)

# menampilkan array yang tidak tersorting
echo "array yang tidak tersorting:"
echo ${array[*]}

for ((i = 0; i<${#array[@]}; i++))
do

    for((j = i; j<${#array[@]}-i-1; j++))
    do

        if ((${array[j]} > ${array[$((j+1))]}))
        then
            temp=${array[$j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done

echo "array yang telah di sorting:"
echo ${array[*]}
