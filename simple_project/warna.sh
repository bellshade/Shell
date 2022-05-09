#!/usr/bin/env bash


# print berbgai warna
# tekan enter untuk menampikan tiap warna

for c in 90 31 91 32 33 34 35 95 36 97; do
	echo -en "\r \e[${c}m Bellshade \e[0m "
	sleep 1
done

# gunakan perintah ctrl+C untuk keluar dari prograams
