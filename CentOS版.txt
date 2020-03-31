yum install wget -y

wget https://static.adguard.com/adguardhome/beta/AdGuardHome_linux_amd64.tar.gz

tar -zvxf AdGuardHome_linux_amd64.tar.gz

cd AdGuardHome

./AdGuardHome -s install

启动：
systemctl start AdGuardHome

重启：
systemctl restart AdGuardHome

关闭：
systemctl stop AdGuardHome

安装nslookup：
yum install -y bind-utils

