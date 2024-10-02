#!/bin/bash


echo -e "check os ..."
check_os() {
    . /etc/os-release
    case $ID in
        ubuntu | debian) apt install sudo -y
        ;;
        centos) yum install sudo -y
        ;;
        *) echo "You cant install manually read docs os"
        ;;
    esac
}

if ["$(dpkg -l | awk '/sudo/ {print }' | wc -l)" -le 1]; then
    check_os()
    sleep 5

echo -e "create new user kyora ..."
useradd kyora && echo -e "1\n\1n" | passwd kyora
sleep 2

echo -e "add kyora to sudoers ..."
usermod -aG sudo kyora