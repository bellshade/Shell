# Pengertian Dasar
Hello, di materi ini akan dibahas mengenai command linux yang berguna untuk melihat services yang berjalan. Untuk materi ini banyak sekali command command yang bisa digunakan, ada `ps -aux`, `systemctl`, `ss -tlpn`, dan sebagainya. Setiap command itu memiliki perbedaan dan cara menggunakanya juga berbeda. Mari kita simak materinya

# systemctl
Command `systemctl` ini sering digunakan untuk melihat service apa yang mati dan service apa yang berjalan. Command ini cukup simpel menggunakannya

```console
kiyo@alpha:~/shell/usefull_command$ sudo systemctl --type=service state=running
```

Outputnya akan menampilkan service yang sedang running di linux tersebut. Oyaa ketika command ada beberapa hal yang harus diketahui

|   Judul     	    |                                   Deskripsi                                   |
|:-----------------:|:-----------------------------------------------------------------------------:|
|`Unit`             | Nama dari service atau daemonnya                                              |
|`Load`             | untuk load state ini berguna ketika service atau error, ataupun lainnya 	    |
|`Active`         	| menandakan service mati atau berjalan                                         |
|`Description`      | deskripsi singkat dari unit                                                   |

# ps -aux
Command `ps -aux` sering digunakan ketika ingin melihat pid service dan sebagainyaa. Biasanyaa ini banyak banget digunakan ketika ada sesuatu yang aneh dalam servernya. Entah ada file yang running in background atau aktifitas yang dilakukan oleh orang lain. Command ini cukup simpel menggunakannya dengan cara

```console
kiyo@alpha:~/shell/usefull_command$ sudo ps -aux
```

Maka outputnya adalah semua pid yang ada dan system yang running, kalau mau liat kurang lebih hasilnya bakal seperti ini 

<div>
    <img src="https://www.poftut.com/wp-content/uploads/2020/07/image-107.png" />
</div>
 
`ps -aux` lebih terperinci, karena pid service yang berjalan sama inti dari service itu berjalan ditampilkan sehingga memudahkan untuk dimaintenance

# ss -tlpn
`ss -tlpn` ini sering digunakan untuk check service dan port yang berjalan pada server. Kerap kali digunakan ketika ingin menjalan services tetapi ada port yang sama. Command nya cukup simpel dengan cara seperti ini 

```console
kiyo@alpha:~/shell/usefull_command$ ss -tlpn
```

Maka outpunyaa akan menghasilkan semua service yang berjalan dan port yang digunakan, selain port juga terdapat pid yang digunakan. Kurang lebih hasilnya akan seperti ini

```console
kiyo@alpha:~/shell/usefull_command$ ss -tlpn
State            Recv-Q            Send-Q                       Local Address:Port                        Peer Address:Port           
LISTEN           0                 128                                0.0.0.0:22                               0.0.0.0:*              
LISTEN           0                 5                                127.0.0.1:65000                            0.0.0.0:*              
LISTEN           0                 128                                      *:80                                     *:*              
LISTEN           0                 128                                   [::]:22                                  [::]:* 
```