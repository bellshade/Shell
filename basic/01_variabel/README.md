# Variabel

Variabel, adalah string karakter yang kita beri nilai, nilai yang diberikan dapat berupa angka, teks, nama file, perangkat atau jenis data lainnya.

variabel tidak lebih dari petunjuk ke data aktual. shell memungkinkan kita untuk membuat, menetapkan dan menghapus variabel.

nama variabel hanya boleh berisi huruf( a sampai z atau A sampai Z) angka (0 sampai 9) atau karakter garis bawah ( ``_`` )

dengan peraturan conventional shell, penamaan variabel harus berifat uppercase atau huruf kapital.

contoh nama variabel yang vaild
```
_NAMA
NAMA_VARIABEL
VARIABEL_1
VARIAABEL_KE_2
```

berikut contoh dari variabel yang tidak valid
```
1_NAMA
-NAMA_VARIABEL
VARIABEL1-VARIABEL2
VARIABEL3!
```

alasan kita tidak dapat menggunakan karakter seperti !, &, atau -, karena karakter ini meiliki arti khusus untuk shell.

## mendifinsikan variabel

variabel didefinisikan sebagai berikut
```
VARIABEL=VALUE
```

contoh diatas mendefinisikan variabel dan memberikan nilai padanya, variabel jenis ini disebut dengan **variabel skalar**. variabel skalar hanya dapat menampung satu nilai pada satu waktu. shell memungkinkan kita untuk menyimpan nilai apapun yang diinginkan dalam sebuah variabel.

## mengakses nilai

untuk mengakses nilai yang disimpan dalam variabel. awali pemanggilan dengan tanda dolar ($) sebagai contoh

```bash
NAMA="james cameroon"
echo $NAMA
```

## variabel read only

shell juga menyediakan cara untuk menandai variabel sebagai read-only dengan menggunakan perintah ``readonly``. setelah variabel ditandai, maka nilainya tidak dapat diubah.

```bash
NAMA="adam levine"
readonly NAMA
NAMA="james cameroon"
```

jika dijalankan maka akan menghasilkan output
```
NAME: is read only.
```

## variabel unset

unset atau menghapus variabel mengarahkan shell untuk menghapus variabel dari daftar variabel yang dilacaknya. setelah kita menghapus variabel. kita dapat mengakses nilai yang disimpan dalam variabel. contoh sintaks dari menghapus variabel

```
unset NAMA_VARIABEL
```

perintah diatas menghapus nilai dari variabel yang ditentukan.

```bash
NAMA="james cameroon"
unset NAMA
echo $NAMA
```

contoh di atas tidak mencetak apapun. kita tidak dapat menggunakan perintah **unset** untuk menghapus variabel yang ditandai **readonly**

