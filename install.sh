#!/bin/sh

echo "正在关闭AdGuardHome DNS服务器. . ."

systemctl stop AdGuardHome 

systemctl disable AdGuardHome

echo "正在下载AdGuardHome DNS服务器. . ."

wget https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz -O /opt/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

cd /opt

tar -zvxf AdGuardHome_linux_amd64.tar.gz

rm -rf AdGuardHome_linux_amd64.tar.gz

cd /opt/AdGuardHome && ./AdGuardHome -s install

apt install -y dnsutils

clear

echo "DNS服务器已安装！"
