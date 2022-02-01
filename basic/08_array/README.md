# Array
Array adalah sebuah metode dimana didalamnya terdapat beberapa string ataupun angka. Lalu apa si fungsinya si array ini?. Mari kita kupas tuntas, kenapa array itu penting

Kita ambil contoh aja seperti ini semisalnya kita ingin membuat banyak data tapi data itu hanya disimpan saja tidak ditampilkan atau hanya bisa diakses dengan cara mengambil data arraynya saja. Maka array adalah cara yang tepat. Contohnya kaya gini yaitu tentang nama nama buah 

```bash
echo "apel"
echo "mangga"
echo "anggur"
```

Jika kita lakukan seperti diatas tidak efisien apalagi kita hanya ingin `apel` saja yang ingin kita tampilkan bukan `mangga dan anggur`. Lalu bagaimana dengan struktur dari array ? Seperti inilah strukturnya.

```bash
var=('string' 'string' 'string')
echo "${var[@]}"
```
Nah sebelum lanjut kecontoh pasti bingung dengan tanda `${var[@]}`, nah mari simak dulu apa si fungsinya 

```
echo "${var[@]}"  => Berarti mengambil isi data array secara keseluruhan
echo "${var[0]}"  => Mengambil nilai data dari index 0
echo "${#var[@]}" => Menghitung panjang array
echo "${!var[@]}" => Berarti menampilkan setiap data itu dari index ke berapa
```

Nah mari kita coba membuat array dengan variabel `buah` dan isi datanya itu `apel, mangga, angur`

```bash
buah=('apel' 'mangga' 'anggur')
echo "Nama Buahnya adalah : ${buah[@]}"
echo "Nama Buah Index 0 : ${buah[0]}"
echo "Panjang Array : ${#buah[@]}"
echo "Index Setiap Buah : ${!buah[@]}"
 
# Output :
# Nama Buahnya adalah : apel mangga anggur
# Nama Buah Index 0 : apel
# Panjang Array : 3
# Index Setiap Buah : 0 1 2
```

Oke semisalnya kita ingin mengubah salah satu data dan memasukan data baru apakah bisa ? Sudah tentu bisa kita akan menggunakan `var[index]="data_baru"`. Contohnya seperti ini

```bash
buah=('apel' 'mangga' 'anggur')
buah[3]="semangka"
buah[0]="pir"
echo "Nama Buahnya adalah : ${buah[@]}"
echo "Nama Buah Index 0 : ${buah[0]}"
echo "Panjang Array : ${#buah[@]}"
echo "Index Setiap Buah : ${!buah[@]}"
 
# Output :
# Nama Buahnya adalah : pir mangga anggur semangka
# Nama Buah Index 0 : pir
# Panjang Array : 4
# Index Setiap Buah : 0 1 2 3
```
Di line 2 script diatas itu `menambahkan data di index 3` dan line 3 `mengubah index 0 menjadi pir`

Lalu bagaimana ketika kita ingin menghapus data array ? Mudah sekali kita bisa menggunakan method `unset` jadi yang kita lakukan itu `unset var[index]`, contohnya 

```bash
#!/bin/bash

buah=('apel' 'mangga' 'anggur')
buah[3]="semangka"
buah[0]="pir"
unset buah[1]
echo "Nama Buahnya adalah : ${buah[@]}"
echo "Nama Buah Index 0 : ${buah[0]}"
echo "Panjang Array : ${#buah[@]}"
echo "Index Setiap Buah : ${!buah[@]}"

# Output:
# Nama Buahnya adalah : pir anggur semangka
# Nama Buah Index 0 : pir
# Panjang Array : 3
# Index Setiap Buah : 0 2 3
```

# Slice
Slice ialah metode dimana memotong array dari index berapapun. Maksudnya bagaimana? contohnya kita ingin data arra yang ditampilkan itu tidak dari awal namun dari data ke 5 sampai 7 semisalnya, nah metode yang kita gunakan itu bernama slice. Oke kita ambil contohnya seperti ini

```bash
arr=("apel" "mangga" "rambutan" "semangka" "melon")
echo "${arr[@]}"

# Ouput : apel mangga rambutan semangka melon
```
Nah bagaimana untuk mengambil datanya, oke kita liat table berikut ini 


|    Symbol   	|                           Deskripsi                           	|
|:-----------:	|:-------------------------------------------------------------:	|
|   `[@]:i`   	|           Mengambil data dari `i` awal sampai akhir           	|
|  `[@]:i:x`  	| Mengambil data awal `i` sampai data akhir yang ditentukan `x` 	|
|   `[@]:-i`  	|             Mengambil data awal `-i` dari belakang            	|
|  `[@]:-i:x` 	| Mengambil data awal `-i` dari belakang  sampai data akhir `x` 	|

Dari diatas semisalnya kita ingin mengambil data rambutan sampai dengan melon, bisa dilakukan dengan slice dengan cara seperti ini

```bash
arr=("apel" "mangga" "rambutan" "semangka" "melon")
echo "${arr[@]:2}"

# Output : rambutan, semangka, melon
```
Lalu bagaimana dengan kita yang ingin mengambil data array dari `-i` , apakah itu sama? Berbeda dengan yang tadi data awal dihitung `0`, namun ketika kita mengambil dari belakang awalan berubah menjadi `-1` jadi ketika kita mengambil data dari belakang , contohnya `-3` maka hasilnya akan seperti ini

```bash
arr=("apel" "mangga" "rambutan" "semangka" "melon")
echo "${arr[@]: -3}"

# Output : rambutan, semangka, melon
```
Sama saja dengan contoh pertama namun data yang diambil dari belakang. Semisalnya kita ingin mengambil data dari `-3: -2` apakah bisa? Tidak bisa , jika dilakukan seperti itu akan terjadi error seperti ini

```bash
arr=("apel" "mangga" "rambutan" "semangka" "melon")
echo "${arr[@]: -3: -2}"

# Output : line 2:  -4: substring expression < 0
```
Jadi ketika kita membuat slice index akhir tidak boleh kurang dari 0, nilainya harus angka positif

> Note: Uniknya untuk array kita bebas ingin menambahkan index ke berapa 
