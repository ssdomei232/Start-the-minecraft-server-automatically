自动下载并启动我的世界服务端的bash脚本   
使用前记得看注释自己修改一下    
下面以一个paper服务端做示例(可以使用)
如果你需要更多脚本,可以访问[这里](https://d.mmeiblog.cn/help/minecraft-server-script.html)
```bash
# 安装screen,如果装过了可以跳过
## Ubuntu / Debian
apt update
apt install screen
## RedHat / Centos
yum install screen
# 创建session
screen -R minecraft-server
# 获取脚本
## Debian
curl -sSL https://d.mmeiblog.cn/file/minecraft-server-script/scripts/paper/paper1182.sh -o quick_install.sh && bash quick_install.sh
## Ubuntu
curl -sSL https://d.mmeiblog.cn/file/minecraft-server-script/scripts/paper/paper1182.sh && sudo bash quick_start.sh
## RedHat / CentOS
curl -sSL https://d.mmeiblog.cn/file/minecraft-server-script/scripts/paper/paper1182.sh && sh quick_start.sh
```
