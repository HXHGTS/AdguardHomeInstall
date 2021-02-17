#!/bin/sh

systemctl stop AdGuardhome && systemctl disable AdGuardhome

rm -f /opt/AdGuardHome/README.md

rm -f /opt/AdGuardHome/CHANGELOG.md

rm -f /opt/AdGuardHome/LICENSE.txt

rm -f /opt/AdGuardHome/AdGuardHome

rm -f /opt/AdGuardHome/AdGuardHome.sig

rm -rf /opt/AdGuardHome/agh-backup

clear

echo "正在下载AdGuardHome DNS服务器. . ."

wget https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz -O /opt/AdGuardHome_linux_amd64.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

tar -zvxf AdGuardHome_linux_amd64.tar.gz

rm -f /opt/AdGuardHome_linux_amd64.tar.gz

systemctl start AdGuardHome && systemctl enable AdGuardhome

clear

echo "DNS服务器已升级！"
