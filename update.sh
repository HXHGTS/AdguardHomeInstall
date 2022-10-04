#!/bin/sh

echo "正在停止并删除旧版本AdGuardHome DNS服务器. . ."

systemctl stop AdGuardHome

systemctl disable AdGuardHome

rm -f /opt/AdGuardHome/AdGuardHome

echo "正在下载最新版本AdGuardHome DNS服务器. . ."

wget https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz -O /opt/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

cd /opt && tar -zvxf AdGuardHome_linux_amd64.tar.gz

rm -f /opt/AdGuardHome_linux_amd64.tar.gz

systemctl start AdGuardHome

systemctl enable AdGuardHome

clear

echo "DNS服务器已升级！"
