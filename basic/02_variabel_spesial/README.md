# Variabel spesial

dalam materi sebelumnya, kita memahami bagaimana berhati-hati saat kita menggunakan karakter non alfanumerik tertentu dalam sebuah variabel, ini karena karakter tersebut digunakan dalam nama variabel shell khusus. variabel ini dicadangkan untuk fungsi tertentu.

misalnya, karakter ``$`` mewakili proses id atau **PID** dari shell

```bash
echo $$
```

berikut variabel khusus yang bisa kita gunakan dalam shell script.

| variabel      | deskripsi |
| -----------   | ----------- |
| ``$0``            | nama file saat ini       |
| ``$#``            | jumlah argumen yang diberikan ke script        |
| ``$*``            | semua argumen dikutip ganda, jika script menerima dua argumen, ``$*`` sama dengan ``$1`` ``$2``|
| ``$@``            | semua argumen secara indvidual dikutip ganda, jika script menerima dua argumen, ``$@`` ama dengan ``$1`` ``$2`` |
| ``$?``            | status keluar dari perintah terakhir yang diekseskusi |
| ``$$``            | nomor proses dari shell saat ini. ini adalah id proses yang dijalankannya |
| ``$!``            | nomor proses dari perintah latar belakang terakhir |

## status keluar

variabel ``$?`` mewakili status keluar dari perintah sebelumnya. status keluar adalah nilai numerik yang dikembalikan oleh setiap perintah setelah selesai. sebagai aturan, sebagian besar perintah mengembalikan status keluar ``0`` jika berhasil, dan ``1`` jika tidak berhasil.

beberapa perintah mengembalikan status keluar tambahan karena alasan tertentu, misalnya, beberapa perintah membedakan antara jenis kesalahan dan akan mengembalikan bebrbagai nilai keluar tergantung pada jenis kegagalan tertentu.

