#! /bin/bash

if [ $1 = 'ppa' ]; then
    sudo add-apt-repository ppa:git-core/ppa
    sudo apt-get update
fi

sh `dirname $0`/touch_tool.sh git git
