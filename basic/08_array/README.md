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
 
Output :
Nama Buahnya adalah : apel mangga anggur
Nama Buah Index 0 : apel
Panjang Array : 3
Index Setiap Buah : 0 1 2
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
 
Output :
Nama Buahnya adalah : pir mangga anggur semangka
Nama Buah Index 0 : pir
Panjang Array : 4
Index Setiap Buah : 0 1 2 3
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

Output:
Nama Buahnya adalah : pir anggur semangka
Nama Buah Index 0 : pir
Panjang Array : 3
Index Setiap Buah : 0 2 3
```
> Note: Uniknya untuk array kita bebas ingin menambahkan index ke berapa 
