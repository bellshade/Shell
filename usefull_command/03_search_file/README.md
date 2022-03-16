# Search File
Command search file ini sangat berguna banget untuk kita mencari gimana file kita berada atau semisalnya kalian belajar cybersec ini penting untuk mencari file yang mencurigakan. Lalu command search file itu apa saja si ? command search file ada 3 yaitu `which`, `locate`, dan `find`.

<table>
<thead>
  <tr>
    <th>which</th>
    <th>mencari file bedasarkan nama aplikasi yang kita punya</th>
  </tr>
</thead>
<tbody>
  <tr>
    <th>locate</th>
    <th>mencari nama file dan berguna untuk melihat list konfigurasi dari aplikasi</th>
  </tr>
</tbody>
<tbody>
  <tr>
    <th>find</th>
    <th>find ini paling populer karena bisa mencari file bedasarkan permission dan namanya</th>
  </tr>
</tbody>
</table>

Oke mungkin kita akan bahas sesuatu tapi untuk find kita akan bahas lebih detail di repo lain untuk saat ini hanya dasarnya saja. And enjoyy to learn about search file


# which
Which ialah salah satu command yang berguna untuk mencari sebuah file atau aplikasi yang kita punya. Oke mungkin dari pernyataan yang diatas sedikit ralat aja untuk which ini hanya berfokus kepada aplikasi atau environment yang kita punya, contoh kasus nya gini misalkan kita ingin melihat apakah kita punya aplikasi yang namanya `java` nah kita bisa gunakan command which

```console
kiyo@alpha:~/shell/usefull_command$ sudo which java
/usr/bin/java
```

Jadi ya which diperuntukan untuk mencari aplikasi yang telah kita install saja, selain itu di which kita bisa menggunakan beberapa nama progam sekaligus , contoh semisalnya kita ingin mencari `python`, `cpp`, `java`, dan `man`

```console
kiyo@alpha:~/shell/usefull_command$ sudo which -a python cpp java bash
/usr/bin/python
/usr/bin/cpp
/usr/bin/java
/usr/bin/bash
```

# locate
Oke locate seperti yang saya jelaskan diatas, locate ini lumayan banyak `flag` yang berguna ketika kita ingin gunakan, nah `flag` nya itu ialah

| flag 	|                      deskripsi                     	|
|:----:	|:--------------------------------------------------:	|
|  -e  	| digunakan untuk memastikan bahwa file tersebut ada 	|
|  -i  	|      ignore case dari nama file yang kita cari     	|
|  -c  	|  menghitung berapa banyak nama file yang kita cari 	|
|  -n  	|  mencari file bedasarkan jumlah yang kita tentukan 	|

Nah mungkin kita coba yang `-i` disini ada 2 file yang kita buat pertama `BELAJAR_SHELLL_SCRIPTING.txt` dan `belajar_shell_scripting.txt` yang dimana file lowercase terdapat di folder `tes`, nah seharusnya output dari command locate -i kedua file tersebut akan keluar baik kita mencari dengan yang lowercase atau uppercase

```console
kiyo@alpha:~/shell/usefull_command$ sudo locate belajar_shell_scripting.txt
/home/kiyo/shell/usefull_command/tes/belajar_shell_scripting.txt
/home/kiyo/shell/usefull_command/BELAJAR_SHELL_SCRIPTING.txt
```

Nah mungkin untuk locate itu aja ya, next kita bahas command `find` mungkin ini akan saya bagi dua yang sebelumnya saya bilang jadi disini command dasarnya aja next kita combine dengan permission file dan kalau bisa dengan `stdout` dan `stderr`

# find
find merupakan command yang sangat berguna untuk mencari sebuah file ataupun folder kita. Find itu sendiri banyak banget fitur yang berguna ketika kita memakai find. Nah seperti yang saya bilang karena ini banyak yang berguna kita bagi dua repo yang repo ini khusus basicnya saja , next akan saya bahas yang advancenya . Oke mari kita bahas find, mungkin pertama dari `flag` nya 

|    flag    	|                     deskripsi                     	|
|:----------:	|:-------------------------------------------------:	|
|     -L     	|               follow symbolic links               	|
|   -type f  	|            Mencari bedasarkan type file           	|
|   -type d  	|           Mencari bedasarkan type folder          	|
|    -name   	|      Mencari file dengan nama yang ditentukan     	|
| -not -name 	| Mencari file dengan namanya bukan yang ditentukan 	|
|    -exec   	|             file yang bisa di execute             	|
|    -perm   	|                permission dari file               	|

Oke mungkin kita coba dengan mencari nama file `belajar_shell_scripting.txt` pakai command `find / -name belajar_shell_scripting.txt`

```console
kiyo@alpha:~/shell/usefull_command$ sudo find / -name belajar_shell_scripting.txt
/home/kiyo/shell/usefull_command/tes/belajar_shell_scripting.txt
```

Oke untuk materi `search_file` sampai disini saja and next time kita bahas find lebih detail lagi , oke enjoyy learn usefull command in shell scripting

