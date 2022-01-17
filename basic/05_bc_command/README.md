BC Command ialah merupakan command yang telah disediakan oleh bash dalam meng-operasikan bilangan. Uniknya di bc ini kita bisa meng-operasikan antara bilangan integer dan bilangan float , menarik bukan. Mari kita bahas tuntas tentang BC Command

Method `bc` ialah sebuah method yang dimana method dari singkatan `basic calculator` dimana disin kita dapat melakukan operasi matematika dengan bilangan apapun. Lalu bagaimana formatnya? Nah formatnya seperti ini

```bash
variabel1=num
variabel2=num

echo $variabel1+$variabel2 | bc
```

Loh heh formatnya seperti itu saja? mudah banget dong. Ya tentu saja inilah yang menarik dari bash dimana kita bisa membuat script kita menjadi lebih efisien, lalu apakah bisa digunakan dengan oneline script? Bisa saja contoh formatnya seperti ini

```bash
echo "var=num;var+=20.5;var" | bc
```

Nah uniknya kita bisa representasikan operator dengan sangat mudah disini, misalkan seperti ini 
```
Ketika kita ingin menambahkan number sebelumnya dengan number baru bisa menggunakan : +=
Ketika kita ingin mengurangi number sebelumnya dengan number baru bisa menggunakan : -=
Ketika kita ingin mengkalikan number sebelumnya dengan number baru bisa menggunakan : *=
Ketika kita ingin membagikan number sebelumnya dengan number baru bisa menggunakan : /=
Ketika kita ingin mempangkatkan number sebelumnya dengan number baru bisa menggunakan : ^=
Ketika kita ingin sisa bagi number sebelumnya dengan number baru bisa menggunakan : %=
```

Lalu bagaimana dengan contohnya? Contohnya sangat mudah , seperti ini 

```bash
variabel1=10.5
variabel2=10

echo $variabel1+$variabel2 | bc

Outputnya :
20.5
```

Selain contoh diatas kita bisa juga menggunakan script oneline yang dimana meng-efisiensi waktu kita dalam ngoding di bash ini

```bash
echo "num=50;num+=20;num" | bc
echo "num=50;num-=20;num" | bc
echo "num=50;num*=20;num" | bc
echo "num=50;num/=20;num" | bc
echo "num=50;num^=20;num" | bc
echo "num=50;num%=20;num" | bc

Outputnya :
70
30
1000
2
9536743164062500000000000000000000
10
```
