# sed
Sed dan awk ialah command yang berguna banget dalam operasi shell scripting. Sed dan awk sangat melekat banget dengan yang namanya `Regex`. Sebelum itu mari kita bahas dulu apa yang dimaksud . Sed atau yang sering disebut dengan istilah `stream editor` ialah unix utility yang digunakan untuk parsing dan mengubah text file. Sed disebut dengan `line-oriented` yang dimana beroperasi dalam satu bari di waktu yang sama dan biasanya melekat dengan yang namanya `regular expression / regex`, sed memiliki beberapa `flag` atau perintah umum salah satu yang paling umum ialah `s` yang dimana digunakan untuk subtitusi text file, contohnya seperti ini

```bash
#!/bin/dash

# My First Script

echo ‘‘ Hello World !’’
```

Disini kita tau ada yang salah pertama `#!/bin/dash` seharusnya `#!/bin/bash` selanjutnya `My First Script` kurang lengkap dan diganti dengan `My First Shell Script`, nah hasilnya ketika kita untuk replace datanya maka akan seperti ini 

```console
kiyo@alpha:~/shell/usefull_command$ sudo cat main.sh | sed -e 's/dash/bash/g' -e 's/First/First shell/g'

#!/bin/bash

# My First shell Script

echo ‘‘ Hello World !’’
```

Dan masih banyak lagi untuk sed ini sebelum lanjut kita bahas dulu `flag` dari sed dan fungsinya
| Pattern 	|             Operation             	| Command 	|         Operation        	|
|:-------:	|:---------------------------------:	|:-------:	|:------------------------:	|
|    s    	|            subtitution            	|    -e   	| combine mutiple commands 	|
|    g    	|           global replace          	|    -f   	|  read commands from file 	|
|    p    	|               print               	|    -h   	|      print help info     	|
|    I    	|            ignore case            	|    -n   	|       disable print      	|
|    d    	|               delete              	|    -V   	|    print version info    	|
|    G    	|            add newline            	|    -i   	|    in file subtituions   	|
|    w    	|           write to file           	|         	|                          	|
|    x    	| exchange pattern with hold buffer 	|         	|                          	|
|    h    	|    copy pattern to hold buffer    	|         	|                          	|

Oke sebentar sebelum lanjut kita coba mulai dari `\` dan `/` , apa tuh man. Jadi ketika kita ingin subtitusi kan hanya mengambil dari kata yang di ubah, nah ini kita bisa gunakan `/` untuk replace nya, dan menurutku ini jauh lebih baik ketimbang satu kata aja, contohnya seperti ini 

```bash
#!/bin/dash

# command sed

echo "Learning Shell Scripting"
```

nah disini kita ingin mengubah `#!/bin/dash` menjadi `#!/bin/bash` dan kita ingin menambahkan `altermine` setelah sed, nah maka hasilnya akan seperti ini kawan

```console
kiyo@alpha:~/shell/usefull_command$ sudo cat main.sh | sed -e 's:/bin/dash:/bin/bash:g' -e 's/sed/sed delimeter/g'
#!/bin/bash

# command sed delimeter

echo "Learning Shell Scripting"
```

begitupun dengan `\` semisalnya kita tidak ingin menggunakan `delimeter` atau `/` kita bisa menggunakan `\` untuk escape slash character, contohnya seperti ini

```console
kiyo@alpha:~/shell/usefull_command$ sudo sed 's/\/bin\/dash/\bin\/bash/g' main.sh
#!bin/bash

# command sed

echo "Learning Shell Scripting"
```

Yaa kira kira seperti itu tentang sed yang digunakan untuk find replace dari kata yang ingin kita ubah, next kita bahas command dari sed salah satunya yaitu `-f` yang dimana digunakan untuk membaca command dari file contoh kita buat nama file `belajar_sed` isinya `s:/shell/scripting:/bin/bash:g`, lalu seperti biasa yang diatas dan kita coba apa yang terjadi 

```console
kiyo@alpha:~/shell/usefull_command$ sudo sed -f belajar_sed
#!/bin/bash

# command sed filescript

echo "Learning Shell Scripting"
```
Oke untuk sed mungkin sampai disini dulu, karena command diatas yang sering digunakan dan untuk lebih detail mungkin kita akan bahas di materi regex , lanjut ke awk, oya kalau kalian ingin baca baca tentang sed oneline bisa diliat disini [sideline](http://sed.sourceforge.net/sed1line.txt)

# awk
Oke sebelumnya kita bahas apa itu sed, sekarang kita bahas apa si yang dimaksud dengan awk. Diawal sudah dibahas bahwa sed dan awk saling keterkaitan dan pastinya si awk berhubungan dengan yang namanya regex. Awk itu sendiri banyak banget yang kegunaaannya, bisa dijadikan command untuk simpel operasi matematika, translate file ke file lainnya, dan banyak lagi. Untuk disini kita bahas yang sering ketemu dan sering digunakan aja. Oya untuk awk sendiri itu ada 3 variasi : awk, nawk, dan gawk

```
awk  : Original AWK dari A. Aho, B. W. Kernighnan dan P. Weinberger
nawk : New AWK, AT&T's versi dari AWK
gawk : GNU AWK, untuk ini semua distro linux sudah ada gawk
```

Oke mungkin untuk awk sendiri kita hanya bahas beberapa saja mungkin ke bagian operasi materimatika saja, untuk awk itu sendiri ekskusi sebuah command dengan kata `print`. Oke langsung saja kita bahas , pertama mulai dari pattern awk itu sendiri

|        Pattern        	|              Operation              	|
|:---------------------:	|:-----------------------------------:	|
|         BEGIN         	|         awal dari input awk         	|
|          END          	|        penanda akhir dari awk       	|
|         Regex         	|          regular expression         	|
| Relational Expression 	|   biasanya berisi operator logika   	|
|   pattern1, pattern2  	|     yang digunakan untuk operasi    	|

Oke next kita bahas format string apa aja yang ada di awk, di awk sam halnya dengan bahasa pemograman yang lainnya, baik itu %d, %f, %s dan sebagainya . Namun ada beberapa yang berbeda salah satu contohnya yaitu `%g, %G` yang dimana berfungsi untuk conversi ke `untracted zero`. Dan ya mari kita coba awk, mungkin kita akan coba dengan operasi sederhana yaitu random number pake `awk`. 

```aw
#!/usr/bin/awk -f
BEGIN {
    i=0;
    while (i++ < 10000){
        x=int(rand()*100 + 0.5)
        y[x]++;
    }
    for (i=0; i<100; i++){
        printf(y[i])
        printf("\n", i)
    }
    exit;
}
```

Sebelum penutupan kita bahas dulu alurnya jadi disini pertama looping terlebih dahulu dari banyaknya number yang ingin kita buat, setelah itu kita buat perulangan lagi dimana untuk jumlah i yang akan tampil. Oke mungkin untuk awk sampai sini saja, next ketemu di materi `find file`





