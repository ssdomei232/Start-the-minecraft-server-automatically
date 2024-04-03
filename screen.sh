#!/bin/bash
echo -e "\e[40;38;5;82m By \e[30;48;5;82m Linuxcat-mei \e[0m"
if [[ -f /etc/redhat-release ]]; then
    is_centos=true
    package_manager=yum
elif cat /etc/os-release | grep -q '^ID=centos'; then
    is_centos=true
    package_manager=yum
elif cat /etc/os-release | grep -q '^ID=debian' || cat /etc/os-release | grep -q '^ID=ubuntu'; then
    is_centos=false
    is_apt=true
    package_manager=apt-get
else
    echo -e "\033[31m此脚本不支持您的操作系统(只支持apt和yum包管理器)\033[0m "
    exit 1
fi
if [[ $is_centos == true ]]; then
    if ! command -v screen > /dev/null 2>&1; then
        echo -e "\033[33m没有找到Screen,正在使用 $package_manager 为您安装\033[0m"
        sudo $package_manager install -y screen
    else
        echo -e "\033[32mScreen安装完成\033[0m"
    fi
elif [[ $is_apt == true ]]; then
    if ! command -v screen > /dev/null 2>&1; then
        echo -e "\033[33m没有找到Screen,正在使用 $package_manager 为您安装\033[0m"
        sudo $package_manager update && sudo $package_manager install -y screen
    else
        echo -e "\033[32mScreen安装完成\033[0m"
    fi
fi
screen -R minecraft-server