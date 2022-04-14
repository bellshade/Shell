#!/bin/bash

NAMA_PROGRAM=CuacaKU

case $1 in
-h | --help)
    echo "$NAMA_PROGRAM"
    echo "usage: cuaca [opsi]"
    echo "Opsi Long opsi deskripsi"
    echo "-h --help menampilkan bantuan"
    echo "-l [lokasi] --location [lokasi] menampilkan cuaca di lokasi"
    ;;
-l | --location)
    curl https://wttr.in/$2
    ;;
*)
    curl https://wttr.in
    ;;
esac
