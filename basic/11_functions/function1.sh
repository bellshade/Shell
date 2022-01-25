#!/bin/bash

function isGt(){
    echo -e "Masukan Angka Pertama: \c"
    read angka1
    
    echo -e "Masukan Angka Kedua: \c"
    read angka2

    if [[ $angka1 -gt $angka2 ]]
    then
        echo "Angka Terbesar : $angka1"
    else
        echo "Angka Terbesar : $angka2"
    fi
}

isGt
