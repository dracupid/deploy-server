#! /bin/bash

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/dracupid/deploy-server/master/INIT.sh)"

# install git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dracupid/deploy-server/master/git.sh)"

git clone https://github.com/dracupid/deploy-server.git ~/deploy-server
cd ~/deploy-server

# use 163 ubuntu mirror
./163-mirror.sh
