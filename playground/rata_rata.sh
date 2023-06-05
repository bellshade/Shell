#!/bin/bash

rata() {
  # Membuat variabel yang basis array untuk input beberapa data
  arr=("$@")

  # Menghitung panjang array
  panjang=${#arr[@]}
  jumlah=0

  # Looping untuk menambahkan total semua angka yang berada di array
  for angka in "${arr[@]}"; do
    jumlah=$(bc -l <<< "$jumlah + $angka")
  done

  # Hasil dari penjumlahan dibagi dengan panjang array
  hasil=$(bc -l <<< "$jumlah / $panjang")
  echo $hasil
}

data=(2 2 3 4 6 6 2 3)
rata "${data[@]}"
