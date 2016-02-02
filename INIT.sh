#! /bin/bash

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/dracupid/deploy-server/master/INIT.sh)"

# install git

hash git >/dev/null 2>&1 || {
    echo "git is not installed, installing..."
    sudo apt-get install -y git
}

git clone https://github.com/dracupid/deploy-server.git ~/deploy-server
cd ~/deploy-server

# use 163 ubuntu mirror
./init/163-source.sh

# 安装add-apt-repository
./util/touch_tool add-apt-repository python-software-properties
# 添加最新版本软件的更新仓库
./init/ppa.sh

# 解决Setting locale failed.
echo "export LC_ALL=C" >> ~/.bashrc
source ~/.bashrc
