
# **Regular Expression (Regex)**

**Regex** adalah singkatan dari _Regular Expression_, yaitu serangkaian karakter yang mendefinisikan **pola** pencarian untuk melakukan proses _**matching**_, _**locating**_, dan _**text manipulation**_.

Dengan Regex, kita dapat melakukan pencarian yang lebih kompleks dan fleksibel dibandingkan dengan pencarian teks biasa.

---

## **Perintah Terkait Regex: `GREP`, `AWK`, `SED`**

### 1. **Grep**
`grep` digunakan untuk mencari _string_ di dalam sebuah _line_ teks, baik itu di dalam satu file atau dalam beberapa file di sebuah folder. `grep` sangat efektif untuk menemukan pola sederhana dalam teks.

**Contoh:**
```bash
grep "pattern" file.txt
```

### 2. **Awk**
`awk` adalah alat yang lebih canggih dibandingkan `grep`. Selain melakukan pencarian teks seperti `grep`, `awk` juga bisa memproses dan memanipulasi data kolom seperti pada file CSV atau tabel teks lainnya. Dengan kata lain, `awk` adalah `grep` yang ditingkatkan dengan kemampuan pemrosesan data berbasis kolom.

**Contoh:**
```bash
awk '$1 ~ /pattern/ {print $0}' file.csv
```

### 3. **Sed**
`sed` adalah alat yang digunakan untuk memodifikasi teks berdasarkan pola tertentu. Ini sering digunakan untuk melakukan penggantian teks (_substitution_) dan manipulasi sederhana berdasarkan _Regular Expression_. Namun, `sed` lebih jarang digunakan dibandingkan `grep` atau `awk` dalam skenario sehari-hari.

**Contoh:**
```bash
sed 's/pattern/replacement/' file.txt
```

---

## **Contoh Penggunaan `awk` dengan Regex**

Berikut adalah contoh penggunaan `awk` untuk mencocokkan dan mencetak baris berdasarkan kolom pertama yang memenuhi pola regex.

```bash
awk '$1 ~ /p[o]/ {print $0}' "fileanda.txt"
```

### **Penjelasan:**

- **`$1`** : Mengacu pada kolom pertama dari setiap baris.
- **`~`** : Operator pencocokan regex.
- **`/p[o]/`** : Pola yang mencocokkan string yang berisi huruf 'p' diikuti oleh huruf 'o'.
- **`{print $0}`** : Mencetak seluruh baris jika kolom pertama sesuai dengan pola regex.

Jadi, perintah di atas akan mencetak semua baris dari `fileanda.txt` di mana kolom pertamanya mengandung string 'po'.

---

Dengan memahami penggunaan dasar dari `grep`, `awk`, dan `sed`, serta cara menggunakan regex, kamu bisa melakukan pencarian dan manipulasi teks yang lebih efisien dan fleksibel!
