#!/usr/bin/env bash

# Contoh skrip sederhana untuk menampilkan
# suhu cpu

echo "Menampikan suhu CPU"

TEMP_FILE=/sys/class/thermal/thermal_zone0/temp

ORI_TEMP=$(cat $TEMP_FILE)
TEMP_C=$((ORI_TEMP/1000))
TEMP_F=$((TEMP_C *9/5 + 32))

# menampilkan hasil

echo $TEMP_C C