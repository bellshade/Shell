# Operation File
Oke sebentar yang dimaksud dengan operation file itu bagaimana?, pertanyaan yang bagus mari kita bahas tuntas. Operasi file yang dimaksud ialah dimana kita akan membaca file, dan membuktikan adanya sebuah file dengan shell scripting. Nah lalu bagaimana untuk mengambil file dari luar, bisa dilakukan dengan `$1`, jadi akan seperti ini

```bash
variabel=$1
cat $variabel
```
Oke cat itu apa ? apakah itu kucing?. Bukan bree, beda cerita `cat` yang dimaksud disini ialah command dasar linux yang digunakan untuk membaca isi `file`. Oke mungkin penjelasan detail `cat` akan dibahas di `usefull_command` yang penting kita sudah tau bahwa `cat` itu untuk membaca file. Next bagaimana caranya kita tahu bahwa file itu ada ?. Hal ini bisa dilakukan dengan `-f`, bagaimana tuh? seperti ini

```bash
echo -e "Enter your file : \c"
read variabel

if [[ -f $variabel ]]
then
    echo "File Found"
else
    echo "Not Found"
fi
```
Oke untuk file kita udah tau nih caranya bagaimana, lalu bagaimana dengan folder? mari kita bahas

# Operation Folder
Operation folder dimana kita memanggil folder dari komputer kita. Sebelum itu mari kita bahas, apa itu `mkdir`?. Oke `mkdir` ialah command linux yang digunakan untuk membuat sebuah folder. Untuk penjelasan lebih detail kita akan bahas di `usefull_command` yang penting kita tau bahwa `mkdir` command untuk buat folder.

```bash
variabel=$1
mkdir $variabel
```

Lalu bagaimana cara check bahwa directory sudah ada ? dengan `-d` dimaan fungsinya ini untuk mengecheck adakah directory yang kita masukan, untuk contoh progamnya seperti ini

```bash
echo -e "Enter Directory : \c"
read folder_name

if [[ -d $folder_name ]]
then
    echo "Folder Found"
else
    echo "Folder Not Found"
fi
```
Jadi logicnya ketika folder itu ada, maka menghasilkan output `Folder Found` dan jika tidak outputnya adalah `Folder Not Found`
