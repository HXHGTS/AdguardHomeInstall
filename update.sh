#!/bin/sh

echo "正在停止AdGuardHome DNS服务器. . ."

systemctl stop AdGuardHome

systemctl disable AdGuardHome

mv -f /opt/AdGuardHome/AdGuardHome.yaml /root/AdGuardHome.yaml

rm -rf /opt/AdGuardHome/

echo "正在下载AdGuardHome DNS服务器. . ."

wget https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz -O /opt/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

cd /opt && tar -zvxf AdGuardHome_linux_amd64.tar.gz

rm -f /opt/AdGuardHome_linux_amd64.tar.gz

mv -f /root/AdGuardHome.yaml /opt/AdGuardHome/AdGuardHome.yaml

systemctl start AdGuardHome && systemctl enable AdGuardHome

clear

echo "DNS服务器已升级！"
