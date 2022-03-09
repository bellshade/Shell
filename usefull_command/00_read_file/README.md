# Read File Command
Oke untuk membaca sebuah file sebenarnya ada beberapa cara dengan `cat` ataupun `head`. Namun keduanya memiliki perbedaan mulai dari segi tujuan dan dari segi operatornya. Oke langsung saja kita bahas.

<table style="width:100%">
    <tr>
        <th>Nama</th>
        <th>Deskripsi</th>
    </tr>
    <tr>
        <th>cat</th>
        <th>cat ialah sebuah command dasar linux yang dimana peruntukan untuk membaca file mulai dari awal sampai akhir kalimat, cat bisa dimanipulasi dengan beberapa flag ataupun command tambahan</th>
    </tr>
    <tr>
        <th>head</th>
        <th>head ialah sebuah command linux yang dimana tujuanya sama dengan cat untuk membaca file namun head diperuntukan untuk membaca file bedasarkan line isi file</th>
    </tr>
</table>

Oke dari deskripsi kita tahu bahwa untuk cat sendiri mungkin lebih spesifikasi ketimbang dengan head. Oke mungkin kita tahu nih spesifiknya tapi bagaimana menggunakanya dengan sangat baik, oke kita bahas satu per satu

# cat
Oke kita sudah tau `cat` fungsinya buat apa, mari kita bahas `flag` yang dimana berguna ketika di combine.
|   Tanda  	|                                   Deskripsi                                   	|
|:--------:	|:-----------------------------------------------------------------------------:	|
|    `>`   	| Oke tanda ini digunakan untuk memasukan data ke file baru atau yang sudah ada 	|
|   `>>`   	| Tanda ini digunakan untuk menambahkan data di line paling bawah di dalam file 	|
|   `-n`   	|                   Digunakan untuk melihat line dari isi file                  	|
|   `-T`   	|                        Digunakan untuk `tab` pada file                        	|
|   `-s`   	|                       Digunakan untuk remove blank lines                      	|

Sebenarnya banyak banget `flag` yang lain, cuma kali ini kita bahas yang istilahnya paling berguna. Next kita coba buat progam dimana progam itu menyangkut dari `flag` dari file tersebut. Oke sepertinya dibuat progam menarik juga nih, mungkin untuk progam kalian bisa liat disini [`cat.sh`](https://github.com/bellshade/Shell/blob/main/usefull_command/read_file/cat.sh). Oke next kita bahas tentang `head`

# head
Yosh, kita seperti hal-nya dengan `cat` kita udah tau fungsinya buat, nah mari kita bahas `flag` apa saja yang berguna ketika kita combine dengan `head`

|     Tanda    	|                                     Deskripsi                                     	|
|:------------:	|:---------------------------------------------------------------------------------:	|
|     `-n`     	|        Oke tanda ini digunakan untuk membaca file bedasarkan `line` filenya       	|
|     `-c`     	|        Tanda ini digunakan untuk untuk membaca file bedasarkan per `bytes`        	|
|     `-q`     	|               Digunakan untuk menggabungkan kedua data dari isi file              	|
|     `-v`     	|          Digunakan untuk `verbose` dimana akan muncul nama file diatasnya         	|

Oke sebenarnya si `head` ini gak terlalu kompleks dari si `cat` karena mulai dari keterbatasan membaca file yang memiliki maximal 10 line saja. Maka dari itu jarang sekali orang yang memakai `head` tapi ya walaupun begitu sering digunakan dan di combine dengan beberapa command lain maka menghasilkan hal yang unik. Oke mungkin tidak asik kalau `head` tidak di buat sebuah progam, mungkin untuk progam kalian bisa liat disini [`head.sh`](https://github.com/bellshade/Shell/blob/main/usefull_command/read_file/head.sh). Oke mungkin sampai disini aja next kita bahas manipulasinya

