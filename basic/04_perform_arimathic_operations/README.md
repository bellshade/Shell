Perform Arimathic Operations ialah sebuah metode dimana memanipulasi operasi aritmatika yang menggunakan tanda `$` untuk melakukan operasi. Lalu bagaimana formatnya om? Okey, formatnya tuh seperti ini 

```bash
variabel1=number
variabel2=number

echo $((variabel1 + variabel2))
echo $((variabel1 - variabel2))
echo $((variabel1 / variabel2))
echo $((variabel1 * variabel2))
```

Jadi tanda `$` menandakan bahwa yang kita masukkan itu adalah sebuah variabel, bukanlah sebuah string ataupun angka. Oke, lalu bagaimana contohnya? Seperti ini contohnya

```bash
variabel1=20
variabel2=15

echo $((variabel1 + variabel2))
echo $((variabel1 - variabel2))
echo $((variabel1 / variabel2))
echo $((variabel1 * variabel2))

Output :
35
5
1
300
```

Namun ada lagi selain dari `$` ada namanya `expr` dimana fungsi nya itu sebagai mengekspresikan output dari nilai value, yang dimana ekspresi yang dimaksud ini antara lain pertambahan, pengurangan, pembagian dan perkalian. Formatnya seperti ini

```bash
variabel1=number
variabel2=number

echo $(expr $variabel1 + $variabel2)
echo $(expr $variabel1 - $variabel2)
echo $(expr $variabel1 \* $variabel2)
echo $(expr $variabel1 / $variabel2)
```

Eits sebentar kenapa yang operasi perkalian dijadikan seperti ini `\*`, jadi pada method `expr` sendiri ini operasi perkalian menggunakan arimethic expression yaitu dengan tanda backslash. Contohnya seperti ini 

```bash
variabel1=20
variabel2=15

echo $(expr $variabel1 + $variabel2)
echo $(expr $variabel1 - $variabel2)
echo $(expr $variabel1 \* $variabel2)
echo $(expr $variabel1 / $variabel2)

Output :
35
5
300
1
```
