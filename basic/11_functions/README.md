
Functions
========
Functions adalah merupakan sebuah metode dimana script kode kita disimpan di dalamnya dan bisa kita ambil sebanyak yang kita inginkan. Oke lalu bagaimana dengan struktur dari `function` di `shell scripting`, nah seperti inilah strukturnya :

```bash
function name(){
    Command
}
```
Oke disini nama function itu ditandai dengan `name` nah bukti bahwa itu function ditandai dengan kata `function`, nah ada yang unik dari si `shell scripting` dimana ketika kita membuat function kita bisa lakukan tanpa kata `function` di dalam script sehingga kita bisa langsung membuat namanya, contohnya seperti ini

```bash
nama(){
    Command
}
```
Loh heh, semudah itukah? enak banget dong, ya itulah enaknya `shell scripting` dimana kita bisa melakukan sesimple mungkin, lalu bagaimana dengan contohnya? oke kita ambil contoh simpel aja yang pertama itu tentang penentuan `nilai lebih besar` dengan struktur yang pertama , kedua kita buat contoh tentang `bilangan genap` dengan struktur yang kedua, oke kita buat contoh pertama

```bash
function isGt(){
    echo -e "Masukan Angka Pertama: \c"
    read angka1
    
    echo -e "Masukan Angka Kedua: \c"
    read angka2

    if [[ $angka1 -gt $angka2 ]]
    then
        echo "Angka Terbesar : $angka1"
    else
        echo "Angka Terbesar : $angka2"
    fi
}

isGt
```
Oya saya lupa jelaskan untuk memanggil file kalian cukup tulis nama funtionnya saja contoh diatas namanya `isGt` maka cara manggil function cukup `isGt` saja, dan outputnya akan seperti ini

```
Masukan Angka Pertama: 10
Masukan Angka Kedua: 20
Angka Terbesar : 20
```

Next kita buat untuk yang kedua dimana kita membuat dengan looping dan mencari `angka genap` dengan struktur seperti contoh `kedua`

```bash
genap(){
    for i in {1..50}
    do
        if (( $i%2 == 0 ))
        then
            echo "Ini adalah Genap : $i"
        else
            echo ""
        fi
    done
}

genap
```

Function Variabel
================
Function variabel ialah sebuah functions yang diikuti dengan variabel. Contoh seperti ini `function ganjil` memiliki variabel `isNum` dan dia mengikuti dari function yang ada di `ganjil`. Bagaimana si bang? sepertinya ribet banget, contohnya strukturnya seperti ini

```bash
variabel=2
function name(){
    Command
}
name
```
Nah seperti diataslah contohnya dimana si function akan mengambil variabel diatasnya dan dapat mengolah data tersebut didalam functions
```bash
isNum=50
function ganjil(){
    for (( i=0; i<=isNum; i++))
    do
        if (( $i%2 != 0 ))
        then
            echo "Angka Ganjil : $i"
        else
            echo
        fi
    done
}

ganjil
```

Local Variables
===============
Local Variables adalah sebuah metode dimana variabel ini hanya bisa diakses oleh lokal saja atau dalam function saja, contohnya semisalnya kita memiliki nama function `isName` nah di `isName` ini terdapat sebuah variabel `name` yang dibuat `lokal` sehingga yang bisa akses ini adalah function saja. Oke lalu bagaimana contoh dari yang bukan lokal bang, begini contohnya

```bash
function isName(){
  name=$1
  echo "My Name : $name"
}
name="Dias"
echo "My Name : $name => Before"
isName Kiyo
echo "My Name : $name => After"
```

Maka output yang before itu adalah `Dias`, lalu print `Kiyo`, dan yang after itu juga `Kiyo`

```
My Name : Dias => Before
My Name : Kiyo
My Name : Kiyo => After
```

Oke lalu contoh lokal nya itu bisa ditandai dengan kata `local` sebelum variabelnya, contoh seperti ini

```bash
function isName(){
  local name=$1
  echo "My Name : $name"
}
name="Dias"
echo "My Name : $name => Before"
isName Kiyo
echo "My Name : $name => After"
```

Maka output yang before itu adalah `Dias`, lalu print `Kiyo`, dan yang after itu juga `Dias`. Kenapa bisa begitu mas? ya karena si variabel name telah di setting `local` yang dimana hanya bisa diakses dengan function saja

```
My Name : Dias => Before
My Name : Kiyo
My Name : Dias => After
```
