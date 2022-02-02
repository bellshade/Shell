#!/bin/bash

echo -e "Masukan Angka : \c"
read factorial

constant=1
for (( i=1; i<=factorial; i++))
do
    constant=$(( $constant * i))
done
echo "Result is $constant"
