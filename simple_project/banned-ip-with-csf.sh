#!/bin/bash
white_list="masukan whitelist ip yang kamu butuhkan"

# Jika OS mu centos bisa diganti ke secure bagian auth.log nya
tail -f /var/log/auth.log | while read line
do
    cmd=$(echo "$line" | egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}')

    if echo "$white_list" | grep -qw "$cmd"; then
        echo $cmd "this ip is whitelist address"
    else
        ip_list=$( curl -s https://ipinfo.io/$cmd/json )
        country=$(echo $ip_list | jq -r '.country')
        ip=$(echo $ip_list | jq -r '.ip')
        
        if [ $country != "ID" ]; then
            file="/etc/csf/csf.deny"
            if ! grep -q "$ip" "$file"; then
                echo $ip >> $file && csf -r
            else
                echo $ip "have been banned"
            fi
        fi
    fi
done