#!/bin/bash

buah=('apel' 'mangga' 'anggur')
buah[3]="semangka"
buah[0]="pir"
unset buah[1]
echo "Nama Buahnya adalah : ${buah[@]}"
echo "Nama Buah Index 0 : ${buah[0]}"
echo "Panjang Array : ${#buah[@]}"
echo "Index Setiap Buah : ${!buah[@]}"
