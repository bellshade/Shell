# Shebang
Shebang itu apasih? Shebang adalah sebuah *statement* yang kita tentukan di baris pertama pada shell scripts kita.
Fungsi-nya apa sih shebang ini? Nah di materi ini kita bakal cari tau kenapa shebang itu cukup penting dan apa fungsi-nya.

Nah jadi apa fungsi shebang? Seperti yang saya bilang tadi, shebang adalah *statement* yang kita tentukan di barisan pertama pada shell scripts kita,
fungsi-nya untuk menentukan shell apa yang akan digunakan untuk menjalankan script kita ini.

Shebang akan menginstruksikan shell untuk menjalankan script yang di tentukan dengan shell tertentu. <br>
Contoh dibawah ini menunjukan untuk menjalankan script [for loop](https://github.com/bellshade/Shell/tree/main/basic/09_loops) dibawah dengan shell Bash (dengan asumsi bahwa bash telah di install di `/bin`).

```sh
#!/bin/bash <- ini adalah shebang
for count in {0..10}; do
  echo "Hitungan $count"
done

Output:
Hitungan 0
Hitungan 1
Hitungan 2
Hitungan 3
dan seterus-nya
```

Jadi apakah shebang itu penting? Sangat penting, kenapa? saya akan beri contoh seperti di atas dengan shell yang berbeda yaitu [Debian Almquist Shell (dash)](https://wiki.archlinux.org/title/Dash)

```sh
#!/bin/dash
for count in {0..10}; do
  echo "Hitungan $count"
done

Output:
Hitungan {0..10}
```

Loh, Kok bisa output-nya berbeda? karena dash tidak tahu cara-nya mengubah ekspansi `{0..10}` menjadi sebuah urutan angka.

Tidak semua shell memiliki cara kerja dan syntax yang sama,
itulah mengapa Shebang cukup penting untuk menunjukan shell apa yang akan digunakan untuk menjalankan script kita ini.

Jika script mendeklarasikan dash pada shebang namun saya ingin menggunakan bash bagaimana? <br>
Kalian cukup menjalankan-nya dengan mengawali perintah bash.
```sh
bash /path/ke/file.sh
```

Lalu jika kita tidak menentukan shell apa yang akan digunakan melalui shebang, apa yang akan terjadi?
Jika begitu secara otomatis script akan menggunakan shebang `#!/bin/sh`.

`#!/bin/sh` itu shell apa? itu hanyalah sebuah [symlink](https://en.wikipedia.org/wiki/Symbolic_link) ke shell tertentu, ini bergantung kepada sistem operasi apa yang digunakan karena
pada kebanyakan distro linux symlink `sh` akan mengarahkan-nya kepada Bash, namun berbeda untuk [Debian](https://www.debian.org/intro/about) yang akan mengarahkan-nya kepada dash.

Cara cek-nya gimana? kalian cukup menjalankan perintah `ls -l /bin/sh` di terminal kalian. perintah tersebut akan memberi tahu mengarah kemana symlink tersebut.
```bash
$ ls -l /bin/sh
/bin/sh -> bash # <- Output
```

Karena `sh` hanyalah symlink, maka dari itu sangatlah di rekomendasikan untuk menggunakan `#!/bin/bash` dari pada `#!/bin/sh` untuk menghindari error di shell script kalian.
