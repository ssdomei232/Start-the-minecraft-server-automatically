自动下载并启动我的世界服务端的bash脚本   
在使用此脚本前,我们认为您同意[Minecraft EULA协议  ](https://account.mojang.com/documents/minecraft_eula),如果您不同意,请不要使用此脚本
使用前记得看注释自己修改一下      
下面以一个paper服务端做示例(可以使用)   
如果你需要更多脚本,可以访问[这里](https://d.mmeiblog.cn/help/minecraft-server-script.html)    
此脚本分两步
### 1 安装screen并启动
```bash
## Debian
curl -sSL https://d.mmeiblog.cn/mcs-quick/screen.sh -o screen_install.sh && bash screen_install.sh
## Ubuntu
curl -sSL https://d.mmeiblog.cn/mcs-quick/screen.sh -o screen_install.sh && sudo bash screen_start.sh
## RedHat / CentOS
curl -sSL https://d.mmeiblog.cn/mcs-quick/screen.sh -o screen_install.sh && sh screen_start.sh
```

### 2 启动服务器(以paper1.8.8为例)
```bash
## Debian
curl -sSL https://d.mmeiblog.cn/mcs-quick/?release=<code class="release">paper</code>\&version=<code class="version">1.88</code> -o quick_install.sh && bash quick_install.sh
## Ubuntu
curl -sSL https://d.mmeiblog.cn/mcs-quick/?release=<code class="release">paper</code>\&version=<code class="version">1.88</code> -o quick_install.sh && sudo bash quick_start.sh
## RedHat / CentOS
curl -sSL https://d.mmeiblog.cn/mcs-quick/?release=<code class="release">paper</code>\&version=<code class="version">1.88</code> -o quick_install.sh && sh quick_start.sh
```