# instruksi logika

saat menulis shell script, mungkin kita perlu mengadopsi satu jalur dari dua jalur yang diberikan. Jadi, kita perlu menggunakan pernyataan bersyarat yang memungkinkan program anda membuat keputusuan yang benar dan melakukan tindakan yang benar.

unix shell mendukung pernyataan bersyarat yang digunakan untuk melakukan tindakan yang berbeda berdasarkan kondisi yang berbeda. kami sekarang akan memahami dua pernyataan pengambalikan keputusan di sini

- pernyataan **if..elif..else..fi**
- kasus pernyataan **case..esac**

## pernyataan if..fi

pernyataan if adalah pernyataan pengambilan keputusan yang berguna yang dapat digunakan untuk memilih opsi dari serangkain opsi yang diberikan. sintaks

```bash
if [ ekspresi ]
then
  pernyataan
fi
```

ekspresi _shell_ dievaluasi dalam sintaks di atas. jika nilai yang dihasilkan adalah _true_.

```bash
#!/bin/bash

a=10
b=30

if [ $a == $b ]
then
  echo "a sama dengan b"
fi

if [ $a != $b ]
then
  echo "a tidak sama dengan b"
fi
```

## pernyataan if..else..fi
pernyataan **if..else..fi** adalah bentuk berikutnya dari pernyataan kontrol yang memungkinkan shell untuk mengeksekusi pernyataan dengan cara yang terkontrol dan membuat pilihan yang tepat.

```shell
if [ ekpresi ]
then
  pernyataan1
else
  pernyataan2
fi
```

```bash
#!/bin/bash

a=10
b=50

if [ $a == $b ]
then
  echo "a sama dengan b"
else
  echo "a tidak sama dengan b"
fi
```

## pernyataan if..elif..fi

pernyataan **if..elif..fi** adalah bentuk lanjutan dari pernytaan kontrol yang memungkinkan shell membuat keputusan yang benar dari beberapa kondisi.

```bash
if [ ekspresi ]
then
  pernyataan1
elif [ ekspresi ]
then
  pernyataan2
else
  pernyataan3
fi
```

**contoh**

```bash
#!/bin/bash

a=10
b=60
if [ $a == $b ]
then
  echo "a sama dengan b"
elif [ $a -gt $b ]
then
  echo "a lebih besar dari b"
elif [ $a -lt $b ]
then
  echo "a lebih kecil dari b"
else
  echo "ketiga kondisi tidak terpenhui"
fi
```

## pernyataan case..esac

kita dapat menggunakan beberapa pernyataan **if..elif** untuk melakukan cabang multiway. Namun, ini tidak selalu merupakan solusi terbaik, terutama ketika semua cabang bergantung pada nilai satu variabel.
shell mendukung pernyaataan **case..esac** yang menangani situasi ini dengan tepat, dan melakukannya lebih efisien daripada pernyataan ``if..elif`` berulang.

sintaks dasar dari pernyataan **case..esac** adalah memberikan ekspresi untuk mengevaluasi dan mengeksekusi beberapa pernyataan yang berbeda berdasarkan nilai ekspresi.
interpreter memerikssa setiap kasus terhadap nilai ekspresi sampai ditemukan kecocokan. jika tidak ada yang cocok, kondisi default akan digunakan.

```bash
case kata in
  pattern1)
    pernyataan1
    ;;
  pattern2)
    pernyataan2
    ;;
  pattern3)
    pernyataan3
    ;;
  *)
    pernyataan default
    ;;
esac
```

penggunaan yang baik untuk pernyataan kasus adalah evaluasi argumen baris perintah sebagi berikut.

```bash
#!/bin/bash

buah="kiwi"
case $buah in
  "apel") 
    echo "apel adalah buah paling enak"
    ;;
  "pisang") 
    echo "saya menyukai pisang"
    ;;
  "kiwi") 
    echo "kiwi adalah buah paling enak"
    ;;
esac
```

