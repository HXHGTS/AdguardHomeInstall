# AdguardHomeInstall

在CentOS 7操作系统上搭建dns服务器

若要在Windows上搭建，请使用DNSForMe直接配置！

搭建时，防火墙需要打开tcp53 udp53 tcp80端口，请注意是否已打开！

如果需要加密处理，可以在阿里云官网申请SSL证书！

### 一句话执行安装:
```
yum install -y wget && echo "151.101.108.133 raw.githubusercontent.com" > /etc/hosts && wget https://github.com/HXHGTS/AdguardHomeInstall/raw/master/install.sh -O install.sh && sudo bash install.sh
```

### 默认参数:

网页后端管理：http://<服务器ip地址>

用户名：root

密码：root

DNS地址：<服务器ip地址>:53

上游DNS地址: tls://8.8.8.8 tls://8.8.4.4

### 卸载:
```
wget https://github.com/HXHGTS/AdguardHomeInstall/raw/master/uninstall.sh -O uninstall.sh && sudo bash uninstall.sh
```

