#!/bin/sh

systemctl stop AdGuardhome && systemctl disable AdGuardhome

rm -rf /root/AdGuardHome

clear

echo "正在下载AdGuardHome DNS服务器. . ."

wget https://static.adguard.com/adguardhome/beta/AdGuardHome_linux_amd64.tar.gz -O /root/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

tar -zvxf AdGuardHome_linux_amd64.tar.gz

rm -rf AdGuardHome_linux_amd64.tar.gz

cd /root/AdGuardHome && rm -rf LICENSE.txt && rm -rf README.md && ./AdGuardHome -s install

echo "正在下载AdGuardHome配置文件. . ."

wget https://github.com/HXHGTS/AdguardHomeInstall/raw/master/AdGuardHome.yaml -O /root/AdGuardHome/AdGuardHome.yaml

systemctl restart AdGuardHome

yum install -y bind-utils

clear

echo "DNS服务器已安装！"
