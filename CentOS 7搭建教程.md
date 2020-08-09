```
## 安装
```
sudo yum install wget -y && cd /root && sudo wget https://static.adguard.com/adguardhome/beta/AdGuardHome_linux_amd64.tar.gz && sudo tar -zvxf AdGuardHome_linux_amd64.tar.gz && sudo rm -rf AdGuardHome_linux_amd64.tar.gz && cd AdGuardHome && sudo ./AdGuardHome -s install
```
## 启动：
```
systemctl start AdGuardHome
```
## 重启：
```
systemctl restart AdGuardHome
```
## 关闭：
```
systemctl stop AdGuardHome
```
## 安装nslookup：
```
yum install -y bind-utils
```
## 卸载：
```
systemctl list-unit-files | grep enable && systemctl disable AdGuardHome.service
```
