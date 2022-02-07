#!/bin/bash
echo -e "Input file : "
read isFile

progammCat(){
    echo "1. Menambahkan data baru"
    echo "2. Menambahkan data baru dari yang sudah ada"
    echo "3. Melihat Line dari file"
    echo "4. Melihat tab pada file"
    echo "5. Remove blank lines"
    echo -e "Pilih operasi (1/2/3/4/5) : "
    read operation

    if (($operation == 1))
    then
        echo -e "Masukan data : "
        read isNew
        echo $isNew > $isFile
    elif (( $operation == 2))
    then
        echo -e "Masukan data yang ingin ditambahkan : "
        read isNewAgain
        echo $isNewAgain >> $isFile
    elif (($operation == 3))
    then
        cat -n $isFile
    elif (( $operation == 4))
    then
        cat -T $isFile
    elif (( $operation == 5))
    then
        cat -s  $isFile
    else
        echo "z0nk"
    fi
}
eksekusi(){
    if [[ -f $isFile ]]
    then
        progammCat
    else
        echo "Not Found File"
    fi
}
eksekusi
