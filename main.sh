#!/bin/bash
## JDK 的下载地址
jdk_url="https://d.mmeiblog.cn/file/jdk"
architecture=$(uname -m)
case $architecture in
    x86_64)
        jdk_arch="x64"
        jdk_filename="x64-jdk_version.tar.gz"
        ;;
    aarch64)
        jdk_arch="aarch64"
        jdk_filename="aarch64-jdk_version.tar.gz"
        ;;
    *)
        echo "Unsupported schemas: $architecture"
        exit 1
        ;;
esac
wget $jdk_url"/"$jdk_filename -O "/tmp/$jdk_filename"
if [ $? -ne 0 ]; then
    echo -e "\033[31mFailed to download JDK\033[0m"
    exit 1
fi
mkdir -p /usr/local/java
tar -zxvf "/tmp/$jdk_filename" -C /usr/local/java
rm "/tmp/$jdk_filename"
## 替换jdk_version为你想要的版本
echo -e "\033[32mJDK jdk_version has been installed successfully\033[0m"
mkdir -p /opt/mc
cd /opt/mc
## 一键开服包的地址
wget https://d.mmeiblog.cn/file/minecraft-server-script/pkgs/paper/11.22.tar.gz -O server.tar.gz
tar -zxvf server.tar.gz
server_file="server.jar"
## 替换jdk_version为你想要的版本
chmod +x /usr/local/java/$jdk_arch-jdk_version/bin/java
echo -e "\033[32mEverything is ready, please wait patiently for the server to start\033[0m"
## 替换jdk_version为你想要的版本
/usr/local/java/$jdk_arch-jdk_version/bin/java -jar "$server_file" nogui