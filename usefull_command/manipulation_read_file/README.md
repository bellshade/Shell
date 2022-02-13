# Manipulation Read File
Oke materi ini menjelaskan tingkat lanjut setelah dari `usefull_command read_file`. Hmm, sebenarnya untuk materi ini sangat luas tapi pada kesempatan kali ini akan dibahas beberapa saja, sisanya akan dibahas directory sendiri. Oke langsung saja ke materi, sebenarnya apa si yang dimaksud dengan `manipulation read file` itu sendiri?. Manipulation yang dimaksud ialah dimanan kita mengolah sebuah data menjadi lebih kompleks lagi, contohnya seperti kita ingin membaca file tersebut tapi file tersebut terdapat banyak banget kata tidak mungkin kalau kita baca secara langsung, maka dari itu disini kita bahas `manipulation read file`. Oke apa aja si commandnya?, commandnya itu terdiri dari 2 yaitu :

<table>
<thead>
  <tr>
    <th>less</th>
    <th>Dimana berfungsi untuk mengurutkan data ketika membacanya</th>
  </tr>
</thead>
<tbody>
  <tr>
    <th>grep</th>
    <th>Berfungsi untuk membaca sebuah data dari kata yang telah ditentukan</th>
  </tr>
</tbody>
</table>



Nah mungkin ada beebrapa dari kalian sudah paham mengenai command diatas , nah kali ini kita akan membedah lebih dalam lagi untuk memahaminya, mari kita mulai dari `less`

# less
Kita udah trau less berfungsi untuk mengurutkan data ketika membacanya, nah maksudnya itu bagaimana tuh? kita ambil contoh misalkan kita punya script dan panjang banget kalimatnya nah less berfungsi untuk membuat file tersebut seolah dibaca secara berurut contohnya seperti ini 

```
root@alphacentauri:~# cat Kernel.php  | less
<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;
:
```

Nah kok ada tanda `:` , ini gunanya dimana kamu merasa udah cukup membacanya tinggal ketik aja `wq` yang berguna untuk menyimpan dan quit dari file yang dibaca. Oke mari kita bahas flag yang dimana berguna banget untuk dicombine dengan si `less`


<table>
<thead>
  <tr>
    <th>Flag</th>
    <th>Deskripsi</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>G</td>
    <td>Digunakan ketika sudah melakukan less, dan diperuntukan untuk pindah ke baris awal dan akhir baris</td>
  </tr>
  <tr>
    <td>xg</td>
    <td>Sama halnya dengan G namun x disini adalah angka yang digunakan untuk pindah line sesuai si x</td>
  </tr>
  <tr>
    <td>-N</td>
    <td>Digunakan ketika kita ingin menampilkan line pada isi file</td>
  </tr>
  <tr>
    <td>-p</td>
    <td>Digunakan untuk wrapping kata yang kita masukan contohnya cat Kernel.php | less -p "array" maka kata array akan di mark</td>
  </tr>
  <tr>
    <td>y or k</td>
    <td> Digunakan ketika sudah melakukan `less` dan scrool ke atas</td>
  </tr>
  <tr>
    <td>e or j</td>
    <td>Sama halnya dengan `y or k` namun ini digunakan untuk scrool ke bawah</td>
  </tr>
</tbody>
</table>

Banyak lagi flag yang bisa dimanipulasi, hanya saja `diatas` ialah yang paling banyak yang digunakan, mungkin untuk less hanya seperti ini saja next kita bahas apa itu `grep`.

# grep
Grep ini berbeda dengan less dimana grep itu sendiri diperuntukan untuk mencari sebuah data yang ingin ditampikan saja. Kita ambil contoh misalkan kita ingin melihat data yang error saja nah grep bisa kita gunakan, atau kita ambil simpel lagi ketika ingin menampilkan kata atau data yang diinginkan grep ialah kuncinya. Oke contohnya sperti ini ada sebuah file `flag.txt` dimana kita pengen nyari kata `flag` karena disitu terdapat kata penting 

```
root@alphacentauri:~# cat flag.txt  | grep flag

flagnya ialah akusayangkepadamu
```

Nah ya kurang lebih seperti itu fungsi dari si `grep`, nah next kita bahas flag yang dimana berguna banget ketika di combine

<table>
<thead>
  <tr>
    <th>Flag</th>
    <th>Deskripsi</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>i</td>
    <td>Digunakan untuk wrapping kata tanpa adanya case-sensitive baik itu huruf kapital ataupun huruf kecil</td>
  </tr>
  <tr>
    <td>n</td>
    <td>Untuk n dimana berguna untuk wrapping kata disertai line-nya</td>
  </tr>
  <tr>
    <td>B x</td>
    <td>Menampilkan sebuah data dari nilai x sebelumnya</td>
  </tr>
  <tr>
    <td>A x</td>
    <td>Keterbalikan dengan si B dimana si A ini wrapping sebuah data dari nilai x di line sesudahnya</td>
  </tr>
  <tr>
    <td>C x</td>
    <td>Keterbalikan dari A dan B dimana si C ini dia akan wrapping sebuah data dari nilai x sebelumnya dan sesudahnya</td>
  </tr>
</tbody>
</table>

Oke untuk materi `manipulation read file` sepertinya cukup disini saja, sebagai bentuk implementasinya kita coba buat progam untuk membandingkan fungsi dari si `less` dan `grep`. Oke next kita akan bahas apa itu `sed dan awk`