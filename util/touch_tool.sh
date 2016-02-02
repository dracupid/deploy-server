#! /bin/bash

# ./touch_tool.sh cmdName apt-getName

install() {
    hash $1 >/dev/null 2>&1 || {
        echo "$1 is not installed, installing..."
        sudo apt-get install -y $2
        exit 0
    }
    echo "$1 has be installed."
}

if [ ! $1 ]; then
    echo "No tool name sepcified."
    exit 1
elif [ ! $2 ]; then
    install $1 $1
else
    if [ $3 ]; then
        install $1 $2 $3
    else
        install $1 $2
fi
