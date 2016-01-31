#! /bin/bash

source_file='/etc/apt/sources.list'

cat /etc/apt/sources.list | grep 'mirrors.163.com' >/dev/null 2>&1 || {
    content="# 163 mirror see: http://mirrors.163.com/.help/ubuntu.html
    deb http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse
    deb http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse
    deb http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse
    deb http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse
    deb http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse
    deb-src http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse
    deb-src http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse
    deb-src http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse
    deb-src http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse
    deb-src http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse

    "
    echo -e "${content}\n`cat ${source_file}`" | sudo tee -a ${source_file}
    sudo apt-get update
    echo "Done!"
    exit 0
}

echo "163 mirrors has already been added before."


