#!/bin/sh

echo "正在卸载. . ."

systemctl stop AdGuardHome

systemctl disable AdGuardHome

rm -rf /opt/AdGuardHome

echo "卸载完成!"
