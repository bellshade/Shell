# Permission File
Oke masih mengenai tentang file, sebelum itu apa si yang dimaksud dengan `permission file ?`. Permission file ialah metode dimana untuk mengelola hak akses dari sebuah file. Untuk mengubah permission file itu sendiri dengan command `chmod`, contoh yang kita lakukan pada pembelajaran hari ini kita sering melakukan `chmod 777`. Lalu yang dimaksud angka `777`? Apakah kode rahasia? Atau apa?, Sebelum itu kita pernah menemukan hal seperti ini ketika melihat isi directory

```
kiyo@alphacentauri:~/Git/Shell# ls -la

drwxr-xr-x  5 kiyo kiyo 4096 Jan 28 13:48 advance
-rwxr-xr-x  1 kiyo kiyo   70 Jan 25 09:06 test.sh
```

Mungkin kita awali dengan stepnya , maksudnya step itu bagaimana? Mungkin bisa disebut user, permission file juga melibatkan beberapa user dalam melakukannya, kita ambil contoh file `test.sh`

|   Symbol  	|                Deskripsi               	|
|:---------:	|:--------------------------------------:	|
|   `-rwx`  	|   Oke ini untuk permission untuk user  	|
|   `r-x`   	|       Ini permission untuk group       	|
|   `r-x`   	|       Ini permission untuk other       	|


Loh heh penjelasanya bagaimana? untuk penjelasana apa itu `-rwx, r-x` kalian bisa melihat penjelasan dibawah ini, kalian bisa mengetahui apa yang dimaksud `-rwx, r-x` dan `chmod` apa yang digunakan

|  Symbol  	|                           Deskripsi                          	|
|:--------:	|:------------------------------------------------------------:	|
|    `r`   	|            Akses yang digunakan untuk membaca saja           	|
|    `w`   	|             Diberi akses untuk mengubah isi file             	|
|    `x`   	|              Permission untuk meng-eksekusi file             	|
|    `-`   	|                Tidak mendapatkan akses apapun                	|
|    `d`   	|             Tipenya merupakan folder / directory             	|

Dari tabel diatas menjelaskan bahwa setiap permission yang kita lakukan memiliki alur yang berbeda, ada yang memberikan akses keseluruhan dan ada juga yang hanya membaca saja. Lalu bagaimana kita mengetahuinya, bahwa akses itu hanya digunakan untuk membaca saja. Oke lihat tabel berikut ini

|    Nomor    	|       Permission Type      	|       Symbol       	|
|:-------------:|:-----------------------------:|:---------------------:|
|     `0`     	|        No Permission       	|         `-`        	|
|     `1`     	|           Execute          	|        `-x`        	|
|     `2`     	|            Write           	|        `-w`        	|
|     `3`     	|       Execute + Write      	|        `-wx`       	|
|     `4`     	|            Read            	|        `r-`        	|
|     `5`     	|       Read + Execute       	|        `r-x`       	|
|     `6`     	|        Read + Write        	|        `rw-`       	|
|     `7`     	|   Read + Write + Execute   	|        `rwx`       	|

Dari sini kita tahu bahwa setiap `file` yang di permission `chmod 777` maka akan mendapatkan kesluruhan akses , baik membaca, write, dan execute. Oke lalu bagaimana dengan yang `chmod +x`, `chown`, dan sebagainya. Next kita bahas di folder lainnya.

## Contoh Progam
Oke kita sudah tahu bahwa setiap file memiliki permission dan alur yang berbeda, nah kali ini kita akan mencoba membuat sebuah progam dengan shell scripting dimana progam ini akan chmod sebuah file yang kita input / panggil. Bagaimana kah itu?, oke disini mungkin sekalian mereview materi basic kembali, progam yang kita pakai ada bberapa metode, mulai dari `Function + Input User + If Statement +  Pemanggilan File`. Oya untuk chmodnya kita gunakan sesuai dengan inputan user, seperti inilah contohnya

```bash
#!/bin/bash

permission_file(){
    echo -e "Masukan File : \c"
    read file_name
    
    if [[ -f $file_name ]]
    then
        echo "Permission (ex. 777): "
        read permissions
        chmod $permissions $file_name
    else
        echo "Not Found"
    fi
}

permission_file
```
