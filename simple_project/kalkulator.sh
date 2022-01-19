#!/bin/bash

echo "Calculator By Script Bash"
echo "1. Multiplication"
echo "2. Division"
echo "3. Increment"
echo "4. Subtraction"
echo "========================================="

echo -e "Choose The Operation : \c"
read oP
echo -e "Enter Your First Number : \c"
read a
echo -e "Enter Your Two Number : \c"
read b
echo "=========================================="

if [[ $oP == "1" ]]
then
    let c=a*b
    echo "The Result Is $c"
elif [[ $oP == "2" ]]
then
    let c=a/b
    echo "The Result Is $c"
elif [[ $oP == "3" ]]
then
    let c=a+b
    echo "The Result Is $c"
elif [[ $oP == "4" ]]
then
    let c=a-b
    echo "The Result Is $c"
else
    echo "Unknown Input"
fi
