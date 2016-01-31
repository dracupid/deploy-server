#! /bin/bash

sh `dirname $0`/touch_tool.sh zsh

# install oh-my-zsh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install https://github.com/zsh-users/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH}/custom/plugins/zsh-syntax-highlighting

$ sed -i '' 's/.*plugins=.*/plugins=(git zsh_reload colored-man-pages zsh-syntax-highlighting)/' ~/.zshrc

source ~/.zshrc
