#!/bin/sh

systemctl stop AdGuardhome && systemctl disable AdGuardhome

rm -rf /opt/AdGuardHome

clear

echo "正在下载AdGuardHome DNS服务器. . ."

wget https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz -O /opt/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

cd /opt

tar -zvxf AdGuardHome_linux_amd64.tar.gz

rm -rf AdGuardHome_linux_amd64.tar.gz

cd /opt/AdGuardHome && rm -rf LICENSE.txt && rm -rf README.md && ./AdGuardHome -s install

echo "正在下载AdGuardHome配置文件. . ."

wget https://cdn.jsdelivr.net/gh/HXHGTS/AdguardHomeInstall/AdGuardHome.yaml -O /opt/AdGuardHome/AdGuardHome.yaml

systemctl restart AdGuardHome

yum install -y bind-utils

clear

echo "DNS服务器已安装！"
