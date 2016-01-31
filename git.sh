#! /bin/bash

hash git >/dev/null 2>&1 || {
    echo "git is not installed, installing..."
    sudo apt-get install -y git
}
