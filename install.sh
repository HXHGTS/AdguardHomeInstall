#!/bin/sh

clear

echo "正在下载AdGuardHome DNS服务器. . ."

wget https://static.adguard.com/adguardhome/beta/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

tar -zvxf AdGuardHome_linux_amd64.tar.gz 

rm -rf AdGuardHome_linux_amd64.tar.gz 

cd /root/AdGuardHome && rm -rf LICENSE.txt && rm -rf README.md && sudo ./AdGuardHome -s install

echo "正在下载AdGuardHome配置文件. . ."

wget https://github.com/HXHGTS/AdguardHomeInstall/raw/master/AdGuardHome.yaml -O /root/AdGuardHome/AdGuardHome.yaml

systemctl restart AdGuardHome

clear

echo "--------------------------------------------"

echo "WebUI: http://<服务器ip地址>"

echo "用户名: root"

echo "密码: root"

echo "DNS: <服务器ip地址>"

echo "--------------------------------------------"

echo "DNS服务器已安装，防火墙注意放行tcp53 udp53端口！"
