#! /bin/bash

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/dracupid/deploy-server/master/INIT.sh)"

# install git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dracupid/deploy-server/master/git.sh)"

git clone https://github.com/dracupid/deploy-server.git ~/deploy-server
cd ~/deploy-server

# use 163 ubuntu mirror
./163-source.sh

# 安装add-apt-repository
./touch_tool add-apt-repository python-software-properties

# 解决Setting locale failed.
echo "export LC_ALL=C" >> ~/.bashrc
source ~/.bashrc
