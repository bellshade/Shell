#!/bin/bash

for nama_folder in basic; do
  echo "$nama_folder"
  # menjalankan semua file shell
  for file_shell in basic/*/*.sh; do
    printf "\n"
    echo "$file_shell"
    sh "$file_shell"
  done
done

