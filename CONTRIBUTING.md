# contributing

***Contributor***

Kami sangat senang anda telah ikut berkontribusi dalam implementasi algortima, struktur data, atau memperbaiki *error*.
Semua boleh ikut berkontribusi sekecil apapun dengan pengecualian sebagai berikut:

- Hasil pekerjaan kamu adalah buatan kamu sendiri dan tidak ada hak cipta dari orang lain. Jika kami menemukan kesamaan, maka tidak kami *merge*.
- Hasil kerja kamu akan berlisensi [MIT](LICENSE) ketika *pull request* kamu sudah di-*merge*.
- Hasil kerja kamu wajib mengikuti standar dan *style* koding dari kami.
- Hanya menerima *file* dengan ekstensi ``*.sh``, selain itu dibuat pengecualian dengan menjelaskan secara detail.


## pull request

gunakan [issue](https://github.com/bellshade/Shell/issues/new) apabila ingin menambahkan kode atau implementasi lainnya, agar tidak ada konflik dengan pull request lainnya

- lakukan penjelasan deskripsi perubahan yang anda lakukan pada repositori kami dengan membuat penjelasan pada issue

- setelah menjelaskan perubahan anda di [issue]()  kemudian lakukan fork pada repositori kami.

- setelah melakukan _fork_, dan _clone_ anda dibebaskan untuk mengbuah atau menambah.
    - clone dan kemudian buat branch baru
    ```
    git clone https://github.com/bellshade/shell
    cd shell
    git checkout -b <nama_branch>
    ```

- running terlebih dahulu pada perangkat anda sebelum melakukan commit

- setelah merubah rubah atau menambahkan kode. lakukan commit dengan message awal yang sudah ditentukan.
    - contoh penggunaan message commit yang benar
    ```bash
    git commit -m "feat: menambahkan kode terbaru"
    ```

- lakukan push ke branch ke repositori kamu
```bash
git add .
git commit -m "feat: menambahkan kode terbaru"
git push origin <nama_branch>
```


**pesan commit**

- ``feat:`` untuk menambahkan kode atau tambahan lainnya
- ``fix:`` untuk mengubah kode yang sudah ada atau memperbaiki
- ``docs:`` untuk mengubah atau membuat dokumentasai
- ``add:`` untuk menambah kode atau tambahan lainnya (opsional)

## informasi

pull request akan di-_merge_ jika
- mengikuti standar dan arahan dari ``CONTRIBUTING.md``;
- lulus test dari beberapa testing yang sudah kami siapkan

**lainnya**

- jika ada kendala atau masalah dalam _pull request_, kamu bisa laporkan masalahnya dalam issue

- jika ada test yang tidak lewat atau gagal, kami akan cek kembali perubahan anda

Untuk pull request, disarankan untuk menjelaskan secara detail yang kamu ubah atau tambahkan, dan bersikap sopan serta selalu berterima kasih. Itu salah satu bentuk tata krama yang baik terhadap sesama contributor dan programmer lainnya.