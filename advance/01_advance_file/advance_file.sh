#!/bin/bash

echo "create two new user ...."
sleep 2
useradd monkey && echo -e "1\n1\n" | passwd monkey
sleep 2
useradd pox && echo -e "1\n\1n" | passwrd pox

echo "create folder to opt ...."
sleep 2
mkdir /opt/shellscript && echo "glorious purpose" > /opt/shellscript/glorious

echo "change to monkey ..."
chown -R monkey:monkey /opt/shellscript
