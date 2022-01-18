#!/bin/bash

buah=('apel' 'mangga' 'anggur')
echo "Nama Buahnya adalah : ${buah[@]}"
echo "Nama Buah Index 0 : ${buah[0]}"
echo "Panjang Array : ${#buah[@]}"
echo "Index Setiap Buah : ${!buah[@]}"
