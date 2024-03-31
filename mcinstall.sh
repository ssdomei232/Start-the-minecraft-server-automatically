#!/bin/bash    
    
# 定义下载 JDK 的 URL    
jdk_url="http://mirrors.tuna.tsinghua.edu.cn/Adoptium/17/jdk"    
    
# 获取用户设备的架构    
architecture=$(uname -m)    
    
# 根据架构选择对应的安装包    
case $architecture in    
    x86_64)    
        jdk_arch="x64"
        jdk_filename="OpenJDK17U-jdk_x64_linux_hotspot_17.0.10_7.tar.gz"    
        ;;    
    aarch64)    
        jdk_arch="aarch64"
        jdk_filename="OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.10_7.tar.gz"    
        ;;    
    *)    
        echo "不支持的架构: $architecture"    
        exit 1    
        ;;    
esac    
    
# 下载 JDK 安装包    
wget $jdk_url"/"$jdk_arch"/linux/"$jdk_filename -O "/tmp/$jdk_filename"    
    
# 检查下载是否成功    
if [ $? -ne 0 ]; then    
    echo "下载 JDK 失败"    
    exit 1    
fi    
    
# 解压 JDK 安装包到 /usr/java 目录    
tar -zxvf "/tmp/$jdk_filename" -C /usr/local/java    
    
# 清理临时文件    
rm "/tmp/$jdk_filename"    
    
# 输出安装完成信息    
echo "JDK 17 已安装成功"  
  
# 创建/opt/mc目录    
mkdir -p /opt/mc    
  
# 创建/opt/mc/paper1182目录    
mkdir -p /opt/mc/paper1182    
    
# 进入/opt/mc/paper1182目录    
cd /opt/mc/paper1182    
    
# 下载服务端    
wget https://d.mmeiblog.cn/file/minecraft-server-script/pkgs/paper/paper1182.tar.gz -O paper1182.tar.gz  # 这里需要替换为实际的下载链接  
    
# 解压服务端文件    
tar -zxvf paper1182.tar.gz  
    
# 定义服务端文件名    
server_file="paper-1.18.2-388.jar"    
    
# 启动服务端    
/usr/local/java/jdk-17.0.8.1+1/bin/java -jar "$server_file" nogui
