#!/bin/sh

echo "正在安装AdGuardHome DNS服务器. . ."

wget https://static.adguard.com/adguardhome/beta/AdGuardHome_linux_amd64.tar.gz

tar -zvxf AdGuardHome_linux_amd64.tar.gz 

rm -rf AdGuardHome_linux_amd64.tar.gz 

cd AdGuardHome && ./AdGuardHome -s install

wget https://github.com/HXHGTS/AdguardHomeInstall/raw/master/AdGuardHome.yaml -O /root/AdGuardHome/AdGuardHome.yaml

systemctl restart AdGuardHome

echo "DNS服务器已安装"

echo "WebUI:http://<server_ip>"

echo "用户名，密码均为root"

echo "dns直接指向服务器ip即可！"

