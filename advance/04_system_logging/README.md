## Directory Tree
```cmd
root@alpha:/opt/shellscript# tree /var/log/
/var/log/
├── alternatives.log     
├── alternatives.log.1   
├── alternatives.log.2.gz
├── alternatives.log.3.gz
├── alternatives.log.4.gz
├── alternatives.log.5.gz      
├── alternatives.log.6.gz      
├── alternatives.log.7.gz      
├── apache2
│   ├── access.log
│   ├── access.log.1
│   ├── access.log.2.gz        
│   ├── error.log
│   ├── error.log.1
│   ├── error.log.2.gz
│   ├── error.log.3.gz
│   ├── error.log.4.gz
│   ├── error.log.5.gz
│   └── other_vhosts_access.log
├── apt
│   ├── eipp.log.xz
│   ├── history.log
│   ├── history.log.10.gz
│   ├── history.log.11.gz
│   ├── history.log.1.gz
│   ├── history.log.2.gz
│   ├── history.log.3.gz
│   ├── history.log.4.gz
│   ├── history.log.5.gz
│   ├── history.log.6.gz
│   ├── history.log.7.gz
│   ├── history.log.8.gz
│   ├── history.log.9.gz
│   ├── term.log
│   ├── term.log.10.gz
│   ├── term.log.11.gz
│   ├── term.log.1.gz
│   ├── term.log.2.gz
│   ├── term.log.3.gz
│   ├── term.log.4.gz
│   ├── term.log.5.gz
│   ├── term.log.6.gz
│   ├── term.log.7.gz
│   ├── term.log.8.gz
│   └── term.log.9.gz
├── auth.log
├── auth.log.1
├── auth.log.2.gz
├── auth.log.3.gz
├── auth.log.4.gz
├── btmp
├── btmp.1
├── cups
│   ├── access_log
│   ├── access_log.1
│   ├── access_log.2.gz
│   ├── access_log.3.gz
│   ├── access_log.4.gz
│   ├── access_log.5.gz
│   ├── access_log.6.gz
│   ├── access_log.7.gz
│   ├── error_log
│   └── error_log.1
├── customlog
├── daemon.log
├── daemon.log.1
├── daemon.log.2.gz
├── daemon.log.3.gz
├── daemon.log.4.gz
├── dbconfig-common
│   ├── dbc.log
│   ├── dbc.log.1
│   ├── dbc.log.2
│   └── dbc.log.3
├── debug
├── debug.1
├── debug.2.gz
├── debug.3.gz
├── debug.4.gz
├── dpkg.log
├── dpkg.log.1
├── dpkg.log.10.gz
├── dpkg.log.11.gz
├── dpkg.log.2.gz
├── dpkg.log.3.gz
├── dpkg.log.4.gz
├── dpkg.log.5.gz
├── dpkg.log.6.gz
├── dpkg.log.7.gz
├── dpkg.log.8.gz
├── dpkg.log.9.gz
├── faillog
├── fontconfig.log
├── hp
│   └── tmp
├── installer
│   ├── cdebconf
│   │   ├── questions.dat
│   │   └── templates.dat
│   ├── hardware-summary
│   ├── lsb-release
│   ├── partman
│   ├── status
│   └── syslog
├── kern.log
├── kern.log.1
├── kern.log.2.gz
├── kern.log.3.gz
├── kern.log.4.gz
├── lastlog
├── mail.info
├── mail.info.1
├── mail.info.2.gz
├── mail.log
├── mail.log.1
├── mail.log.2.gz
├── mail.warn
├── mail.warn.1
├── messages
├── messages.1
├── messages.2.gz
├── messages.3.gz
├── messages.4.gz
├── mysql
│   ├── error.log
│   ├── error.log.1
│   ├── error.log.4.gz
│   ├── error.log.5.gz
│   ├── error.log.6.gz
│   ├── error.log.7.gz
│   └── error.log.8.gz
├── nginx
│   ├── access.log
│   ├── access.log.1
│   ├── error.log
│   ├── error.log.1
│   ├── error.log.2.gz
│   └── error.log.3.gz
├── openvpn
│   ├── openvpn.log
│   └── openvpn-status.log
├── private
├── proftpd
│   ├── controls.log
│   ├── proftpd.log
│   ├── proftpd.log.1
│   ├── proftpd.log.2.gz
│   ├── proftpd.log.3.gz
│   ├── proftpd.log.4.gz
│   ├── xferlog
│   ├── xferlog.1
│   └── xferreport
├── roundcube
│   ├── errors
│   └── errors.1
├── syslog
├── syslog.1
├── syslog.2.gz
├── syslog.3.gz
├── syslog.4.gz
├── syslog.5.gz
├── syslog.6.gz
├── syslog.7.gz
├── unattended-upgrades
│   ├── unattended-upgrades-shutdown.log
│   ├── unattended-upgrades-shutdown.log.1.gz
│   ├── unattended-upgrades-shutdown.log.2.gz
│   ├── unattended-upgrades-shutdown.log.3.gz
│   ├── unattended-upgrades-shutdown.log.4.gz
│   ├── unattended-upgrades-shutdown.log.5.gz
│   └── unattended-upgrades-shutdown.log.6.gz
├── user.log
├── user.log.1
└── wtmp

15 directories, 159 files
```

## System Logging
Pada dasarnya setiap system itu butuh file log untuk memantau aktivitas yang dilakukan di dalam system. Materi kali ini sebenarnya materi tambahan yang dimana materi shell scripting sudah selesai hanya sampai [User Administration](../03_user_administration/) saja. Namun sisa materi yang ada adalah tambahan saja yang sedikit berkaitan dengan shell scripting. Kembali ke system logging, bisa diliat di atas kalau banyak sekali file-file yang penting, tapi di materi ini kita tidak bahas semuanya hanya sebagian saja 

### /var/log/syslog
File logger yang berisikan aktivitas didalam system. File ini sering sekali digunakan untuk memantau aktivitas yang ada. Tidak ada yang spesial di sini, kalian bisa memantau log dengan command `tail -f` untuk melihat apa saja yang terjadi di system

```cmd
root@alpha:~# tail -f /var/log/syslog
Oct  2 09:24:08 alpha systemd[1]: Started Authorization Manager.
Oct  2 09:24:08 alpha dbus-daemon[467]: [system] Successfully activated service 'org.freedesktop.PackageKit'
Oct  2 09:24:08 alpha systemd[1]: Started PackageKit Daemon.
Oct  2 09:24:10 alpha systemd[1]: media-cdrom0.mount: Succeeded.
Oct  2 09:24:10 alpha systemd[1376]: media-cdrom0.mount: Succeeded.
Oct  2 09:29:13 alpha PackageKit: daemon quit
Oct  2 09:29:13 alpha systemd[1]: packagekit.service: Main process exited, code=killed, status=15/TERM
Oct  2 09:29:13 alpha systemd[1]: packagekit.service: Succeeded.
Oct  2 09:35:23 alpha systemd[1]: session-4.scope: Succeeded.
Oct  2 09:37:25 alpha systemd[1]: Started Session 8 of user root.
Oct  2 09:39:01 alpha CRON[2038]: (root) CMD (  [ -x /usr/lib/php/sessionclean ] && if [ ! -d /run/systemd/system ]; then /usr/lib/php/sessionclean; fi)
Oct  2 09:39:01 alpha systemd[1]: Starting Clean php session files...
Oct  2 09:39:01 alpha systemd[1]: phpsessionclean.service: Succeeded.
Oct  2 09:39:01 alpha systemd[1]: Started Clean php session files.

```

### /var/log/auth.log
Berbeda dengan `syslog`, log ini digunakan untuk melihat siapa yang sedang melakukan _authentication_ ke server, semua record nya akan dibaca baik yang gagal atau yang berhasil. Sebagai contoh disini bahwa ip address `192.168.100.10` berhasil login ke systemnya

```cmd
root@alpha:~# tail -f /var/log/auth.log
...
Oct  2 09:35:23 alpha systemd-logind[463]: Removed session 4.
Oct  2 09:37:25 alpha sshd[2018]: Accepted password for root from 192.168.100.10 port 3112 ssh2
Oct  2 09:37:25 alpha sshd[2018]: pam_unix(sshd:session): session opened for user root by (uid=0)
Oct  2 09:37:25 alpha systemd-logind[463]: New session 8 of user root.
Oct  2 09:39:01 alpha CRON[2037]: pam_unix(cron:session): session opened for user root by (uid=0)
Oct  2 09:39:01 alpha CRON[2037]: pam_unix(cron:session): session closed for user root
```

### /var/log/apt/history.log
Log yang berguna untuk melihat history installasi package di dalam system. Yaa seperti history pada umumnya saja, ini cuma berisikan waktu dan apa yang telah diinstall terakhir kalinya

```cmd
root@alpha:~# tail -f /var/log/apt/history.log

Start-Date: 2024-10-02  09:23:58
Commandline: apt install tree
Install: tree:amd64 (1.8.0-1)
End-Date: 2024-10-02  09:24:02
...
```

### /var/log/kern.log
Sama pada umumnya, `kern.log` digunakan untuk memantau aktifivitas kernel yang terjadi. Record nya seperti yang lain berisikan kapan dan apa yang telah terjadi

```cmd
root@alpha:~# tail -f /var/log/kern.log
Oct  2 08:14:41 alpha kernel: [   25.264467] tun: Universal TUN/TAP device driver, 1.6
Oct  2 08:14:58 alpha kernel: [   42.198990] audit: type=1400 audit(1727871298.830:12): apparmor="STATUS" operation="profile_load" profile="unconfined" name="docker-default" pid=1178 comm="apparmor_parser"
Oct  2 08:15:05 alpha kernel: [   48.675275] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
...
```

## Kesimpulan
System logging pada semua operating system termasuk linux semuanya sama. Di linux kali ini setiap service yang telah terinstall akan mendapatkan file log yang digunakan untuk memantau hasilnya atau outputnya. Namun kalian juga bisa custom log untuk di assign ke `syslog`, karena itu ada cheatsheet untuk kalian yang mungkin saja berguna hehe :u

| Command              | Deskripsi                                                                   |
|----------------------|-----------------------------------------------------------------------------|
| logger -f file       | command yang berguna assign log file ke `syslog`                            |
| lastb -n {count}     | command untuk check bmtp yang terjadi di system                             |
| systemctl status {s} | ini digunakan untuk check status dari service                               |
| journalctl -xe       | command yang digunakan untuk check yang terjadi ketika service ada problem  |
| lastlog              | untuk melihat setiap user kapan terakhir login disini juga ada info ip nya  |