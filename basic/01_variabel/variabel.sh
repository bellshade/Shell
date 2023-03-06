#!/bin/bash

# membuat variabel
NAMA="adam levine"
NAMA_KEDUA="sherlock holmes"
NAMA_3="tony stark"
ANGKA_BELASAN=15

# membuat variabel nama read only 
# atau nilainya tidak bisa dirubah
# jika dirubah maka nilai tersebut tidak akan terganti
readonly NAMA
# NAMA = "selena gomez"

# mengakses ketiga variabel
echo $NAMA
echo $NAMA_KEDUA
echo $NAMA_3
echo $ANGKA_BELASAN

