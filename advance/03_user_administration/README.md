# User Administration
Hiyaa, materi ini adalah materi tentang management user yang ada di dalam linux. Pada dasarnya semua operating system itu sama, memiliki fitur group dan user yang dimana memiliki rule dan aturan yang berbeda-beda tiap usernya. Nah, mungkin kalau di OS tercinta **windows** sudah terbiasa, kali ini kita bahas di Linux operasi si paling Open Source :u.

# Tahta User
Dalam linux ada beberapa tahta user yang tersedia. Tiap tiap user ini memiliki batasan nya masing-masing ada yang hanya bisa akses di local home dia, akses sebagai root / **god**, dan terakhir ialah **root as god** user yang memiliki semua akses baik kill service, create user, lihat all log, dll. Oyaa, di Linux juga terdapat beberapa user yang dari awal sudah terbentuk yang disebut sebagai _**guest user**_ selain itu ada juga user yang hanya sebatas bisa akses home foldernya saja bisa dikatakan sebagai _**guest user**_

| Nama                 | Deskripsi                                                                  |
|----------------------|----------------------------------------------------------------------------|
| **Root User**        | user dengan tahta tertinggi semua keputusan ada di tangan user ini :u      |
| Standar User         | user yang hanya bisa akses home foldernya dan beberapa `/path` tertentu    |
| Guest User           | user yang sedari awal install sudah ada                                    |
| System User          | user ini akan ada ketika kita install service tertentu                     |
| User Groups          | user yang masuk kedalam groups ini berlaku dengan group sudo juga          |
| Sudo User            | yaa ini user yang memiliki akses layaknya root atas izin root itu sendiri  |

# Management User
Ada beberapa command untuk memanagement user baik create, delete, adjust, dan grouping user. Mungkin dari kalian semua telah memakai command ini karena memang ini hal basic yang wajib diketahui ketika belajar linux

```bash
# menambahkan user baru dengan useradd
$ useradd kyora

# menambahkan user baru dengan adduser
$ adduser kyora
...
```

Kedua command diatas memiliki fungsional yang sama dalam membuat user baru. Hanya saja, untuk adduser sendiri bisa langsung adjust password yang kita inginkan dan password yang diinginkan. Ada beberapa juga command yang berguna untuk management user 
``` bash
# edit password one line command
echo -e "password\nretype_password\n" | passwd kyora

# delete user
userdel kyora

# usermod untuk menambahkan user kedalam group (contohnya)
usermod -aG sudo kyora
```