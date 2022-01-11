# operator

ada berbagai operator yang didukung oleh setiap shell antara lain
- operator aritmatika 
- operator relasional
- operator boolean
- operator string
- operator string
- operator Tes file

## operator aritmatika
Bourne shell awalnya tidak memiliki mekanisme untuk melakukan operasi aritmatika sederhana tetapi menggunakan program eksternal, baik **awk** atau **expr**.

contoh operator aritmatikan antara lain yaitu
- penambahan (``+``)
- pengurangan (``-``)
- perkalian (``*``)
- pembagian (``\``)
- modulus (``%``)

## operator relasional

Bourne Shell mendukung operator relasional berikut yang khusus untuk nilai numerik. Operator ini tidak bekerja untuk nilai string kecuali nilainya numerik.

Misalnya, operator berikut akan bekerja untuk memeriksa hubungan antara 10 dan 20 serta di antara "10" dan "20" tetapi tidak di antara "sepuluh" dan "dua puluh".

```shell
```


- ``-eq``

    memeriksa apakah nilai dua operan sama atau tidak;, jika ya, maka kondisinya menjadi benar.

- ``-ne``

    memeriksa apakah nilai dua opran sama atau tidak; jika nilainya tidak sama, maka kondisinya menjadi benar.

- ``-gt``

    memeriksa apakah nilai operan kiri lebih besar dari nilai operan kanan; jika ya, maka kondisinya menjadi benar.

- ``-lt``

    memeriksa apakah nilai operan kiri kurang dari nilai operan kanan; jika ya, maka kondisinya menjadi benar.

- ``-ge``

    memeriksa apakah nilai operan kiri lebih besar atau sama dengan niai operan kanan jika ya, maka kondisinya menjadi benar.

- ``-le``

    memeriksa apakah nilai operan kiri kurang dari atau sama dengan nilai operan kanan; jika ya, maka kondisinya menjadi benar.
    

## operator boolean 

Operator Boolean berikut ini didukung oleh Bourne Shell.

Asumsikan variabel a menampung 5 dan variabel b menampung 3- maka

- ``!``

    ini adalah negasi logis. ini membalikkan kondisi benar menjadi salah dan sebaiknya 
    ```
    [!false] benar
    ```

- ``o``

    ini logis **atau**. jika salah satu operan benar, maka kondisinya menjadi benar.
    ```
    [$a -lt 20 -o $b -gt 100] benar
    ```

- ``a``

    ini adalah logis **dan**. jika kedua operan benar, maka kondisi menjadi benar jika tidak salah
    ```
    [$a -lt 20 -a $b -gt 100] salah
    ```

