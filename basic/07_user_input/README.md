User Input ialah sebuah metode dimana si pengguna / pembuat script akan memasukan data secara manual tidak lagi melalui editing `scriptnya`. Materi ini penting semisalnya kita mendapatkan tugas `biodata` dengan hasil inputan sendiri. Oke langsung saja ke materinya

Di shell scripting untuk menjadikan sebuah variabel itu inputan dengan method `read`, dimana ini akan menyimpan data hasil inputan kita. Lalu apakah bagaimana strukturnya? seperti ini

```bash
echo "SOME_STRING: "
read variabel
```

Selain itu di shell scripting ada yang namanya `prompt` mode. Dimana mode ini sama seperti dengan `-c`, mode `prompt` bisa di persingkat dengan `-p`. Mode prompt juga bisa diolah menjadi progam inputan password dimana data input user tidak terlihat dan hanya memiliki akses mengetik saja dengan sintaks `-sp`, contoh strukturnya seperti ini

```bash
read -p "MyName : " username
read -sp "MyPassword : " password
echo 
echo "your name is : $username"
echo "your password is : $password"
```

Lalu ada lagi, dimana kondisi ketika kita ingin membuat inputan kita menjadi sebuah array. Bagaimana itu? kita bisa lakukan dengan `-a`. Bagaimana contohnya? seperti ini contohnya

```bash
echo "Array Name : "
read -a name
echo "Names : ${name[0]} ${name[1]} ${name[2]}"
```
