# Find Advance
Haiiiii, kembali lagi materinya. Kali ini bahas soal find command yang digunakan untuk mencari sebuah file. Mayoritas menggunakan find karena yang usefull dan sangat mudah di implementasi. Sebelumnya sudah dibahas, tapi sedikit yang kita bahas, kali ini akan membahas lebih lanjut.

# Command
Dibagian ini kita bisa menggunakan permission file untuk mencari sebuah file dengan type yang kita mau cari. Materi ini sempat kita bahs, dan ada hubunganya dengan command `chmod`. Cukup simpel sebenarnya untuk menggabungkan find dengan type permission yang kita mau.

```console
kiyo@alpha:~/shell/usefull_command$ sudo find /etc/apache2/ -perm 644
```

Dari situ akan menampilkan output file yang ada di folder `/etc/apache2` dengan permission 644. Lalu selain permission kita juga bisa memanfaatkan sebuah pattern untuk mencari file dengan pattern yang kita mau. Ini biasanya sering dilakukan untuk mencari sebuah file yang ada part bagian namanya sama. Cukup simpel kita bisa lakukan command seperti ini 

```console
kiyo@alpha:~/shell/usefull_command$ sudo find / -name *.txt
```

Maka outputnya akan mengeluarkan hasil nama file yang memiliki extension .txt. Ada banyak sekali sebenarnya yang bisa kita lakukan dengan command find ini dan inilah beberapa command yang bisa kita gunakan ketika memakai find

|   Command  	    |                                   Example                                   	|
|:-----------------:|:-----------------------------------------------------------------------------:|
|`spesific file`    | sudo find / -name sample.txt                                               	|
|`find and remove`  | sudo find / -name sample.txt -exec rm -i {} \; 	                            |
|`empty file`   	| sudo find ./example -empty                                                  	|
|`search and grep`  | sudo find / -type f -name sample.txt -exec grep "Hello" {} \;                 |

