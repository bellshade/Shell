#!/bin/bash
echo "Operation Manipulation Read File "

echo -e "Masukan filenya : \c"
read operation

manipulation(){
    echo "1. Sorting File (less)"
    echo "2. Wrapping File (grep)"

    echo -e "Pilih operasi (1/2) : \c"
    read opsi

    if (( $opsi == 1 ))
    then
        cat $operation | less
    else
        echo -e "Masukan kata yang di wrapping : \c"
        read isGrep
        cat $operation | grep $isGrep
    fi
}

if [[ -f $operation ]]
then
    manipulation
else
    echo "This is Not file"
fi