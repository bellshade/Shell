#!/bin/bash
echo -e "Input file : "
read isFile

progammHead(){
    echo "1. Membaca data"
    echo "2. Membaca bedasrkan bytes"
    echo "3. Combine More File"
    echo "4. Verbos file"
    echo -e "Pilih operasi (1/2/3/4) : "
    read operation

    if (($operation == 1))
    then
        echo -e "Masukan line : "
        read isNew
        head -n $isNew $isFile
    elif (( $operation == 2))
    then
        echo -e "Masukan panjang byte : "
        read isNewAgain
        head -c $isNewAgain $isFile
    elif (($operation == 3))
    then
        echo -e "Masukan file lain : "
        read isNewFile
        head -q $isFile $isNewFile
    elif (( $operation == 4))
    then
        head -v $isFile
    else
        echo "z0nk"
    fi
}
eksekusi(){
    if [[ -f $isFile ]]
    then
        progammHead
    else
        echo "Not Found File"
    fi
}
eksekusi
