# AdguardHomeInstall

在CentOS 7操作系统上搭建dns服务器

若要在Windows上搭建，请使用DNSForMe直接配置！

搭建时，防火墙需要打开tcp9953 udp9953 tcp81端口，请注意是否已打开！

如果需要加密处理，可以在阿里云官网申请SSL证书！

### 一句话执行安装:
```
yum install -y wget && wget https://cdn.jsdelivr.net/gh/HXHGTS/AdguardHomeInstall/install.sh -O install.sh && bash install.sh
```

### 默认参数:
```
网页后端管理：http://<服务器ip地址>:81

用户名：root

密码：0269df5e-8a1e-4d8b-b2f0-572bedbb8271

DNS地址：<服务器ip地址>:9953
```
### 卸载:
```
wget https://cdn.jsdelivr.net/gh/HXHGTS/AdguardHomeInstall/uninstall.sh -O uninstall.sh && bash uninstall.sh
```

