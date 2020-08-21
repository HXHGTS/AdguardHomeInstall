#!/bin/sh

echo "正在卸载. . ."

systemctl stop AdGuardHome.service 

systemctl disable AdGuardHome.service 

rm -rf /root/AdGuardHome

echo "卸载完成!"
