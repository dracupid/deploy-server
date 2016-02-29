#! /bin/bash

sudo add-apt-repository ppa:git-core/ppa # git
sudo add-apt-repository ppa:nginx/stable # nginx
sudo add-apt-repository ppa:webupd8team/java # java 8
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - # node

sudo apt-get update
