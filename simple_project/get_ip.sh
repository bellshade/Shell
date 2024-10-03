#!/bin/bash

name="Get IP"

case $1 in
    -h | --help)
        echo "$nama"
        echo "usage: get_ip [opsi]"
        echo "-h | --help menampilkan command detail"
        echo "-i | --ip menampilkan detail ip"
    ;;
    -i | --ip)
        curl ipinfo.io/$2
    ;;
    *)  
        curl ipinfo.io
    ;;
esac