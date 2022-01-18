Apa itu Loop?
============
Loop atau biasa disebutkan dengan perulangan ialah dimana sebuah metode yang akan melakukan perulangan hingga datanya itu bernilai `True`. Didalam loop shell scripting itu terdapat beberapa jenis

```
a. For Loop   => Ialah control flow untuk menentukan iterasi, yang memungkinkan kode dieksekusi berulang kali.
b. While Loop => Melakukan perulangan selagi data bernilai true
c. Until Loop => Melakukan perulangan yang mengikuti dari CommandEnd nya
```
Oke mari kita bahas satu satu , apa itu `for loop`, `while loop`, dan `until loop`

For Loop
=======
For loop ialah sebuah perulangan yang telah dilakukan iterasi dimana didalamnya telah dikasih kondisi sebanyak melakukannya perulangan. For loop salah satu perulangan yang mudah dibaca alurnya ketimbang perulangan yang lainnya.

Oke terus bagaimana `struktur` dari `for loop`, strukturnya itu mudah seperti ini

```bash
for VARIABEL in CONDITION
do
    COMMAND1
    COMMAND2
done
```
Lalu bagaimana contonya ? oke kita akan dari yang mudah terlebih dahulu

```bash
for i in 1 2 3 4 5
do
    echo "Result is : $i"
done
```
Salah satu contohnya seperti diatas, namun itu kurang efisiensi, coba kita berpikir lebih jauh semisalnya kita ingin menampilkan data lebih dari 100 bagaimana? apakah dengan sepeerti itu? sudah tentu tidak kita menggunakan format `{START..END}` seperti apa tuh, contohnya

```bash
for i in {1..5}
do
    echo "Result is : $i"
done
```
Ada lagi semisalnya kita ingin bahwa angka `START` dinaikan dengan angka yang kita tentukan, bagaimana caranya? dengan menggunakan `{START..END..INCREMENT}` dimana setiap angka akan ditambahkan dengan angka `INCREMENT` dan akan berakhir sesuai nilai `END` contohnya

```bash
for i in {0..5..2}
do
    echo "$i"
done

Output
2
4
```
Nah diatas contoh menggunakan angka. Nah uniknya di for loop ini kita bisa melakukan berupa data `file`, ataupun data `array`, mari kita contoh dengan data `array`

```bash
buah=('apel' 'anggur' 'pir')
for i in ${buah[@]}
do
    echo "$i"
done

Output:
apel
anggur
pir  
```

Until Loop
==========
Until looop ialah sebuah perulangan dimana akan kondisinya ini keterbalikan dari si `while loop`. Loh maksudnya gimana nih? Maksudnya gini di `while loop` itu kita harus mencari cara bagaimana caranya akan menghasilkan angka yang ditentukan untuk berhentinya `loop`

Nah `until loop` ini dimana dia akan berhenti bedasarkan kondisinya itu kurang dari hasil si datanya. Semisalnya begini kita ingin print angka `1-15`, dengan until loop. Nah kondisi yang dipakai itu `$var > 15` bukanlah `$var <= 15`. Loh heh, ko begitu ? menarik bukan, mari kita bahas strukturnya 

```bash
until (( conditions ))
do
    command1
    command2
    ...
    ....
    commandEnd
done
```
Jadi untuk loopingnya berhenti itu ada didalam `CommandEnd` dimana semisalnya kita ingin membuat angka `1-15` maka harus `var++` supaya loopnya berhenti jika tidak maka akan terjadi infinite loop

```bash
num=1
until (( $num > 15 ))
do
    echo "Result Is : $num"
    (( num++ ))
done
```

While Loop
==========
While loop ialah sebuah perulangan yang dimana akan terus melakukannya selagi bernilai true. Lalu strukturnya bagaimana? Strukturnya itu mudah banget, seperti ini

```bash
while (( conditions ))
do
    command1
    command2
    command3
done
```

Nah lalu bagaimana contohnya?, oke mari kita buat sebuah keadaan sederhana dimana si `num` defaultnya adalah `1`, disini kita ingin menampilkan setiap angka dari si `num` dengan syarat hanya sampai angka `15` saja, bagaimana progamnya?. Sperti ini

```bash
num=1

while (( $num <= 15))
do
    echo "Index Of $num"
    (( num++ ))
done
```
Maka outputnya itu `Index Of : num` sampai num sama dengan `15` maka akan berhenti looping. Oya alasan ditambahkan `num++` agar nilainya bertambah jika tidak maka akan menjadi `infinite loop`

