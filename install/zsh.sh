#! /bin/bash

sh `dirname $0`/../util/touch_tool.sh zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install https://github.com/zsh-users/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH}/custom/plugins/zsh-syntax-highlighting

# update ~/.zshrc
# if [[ "$OSTYPE" = darwin* ]] ; then
#     $file=""
# fi
sed -i 's/.*plugins=.*/plugins=(git zsh_reload colored-man-pages zsh-syntax-highlighting)/' ~/.zshrc
sed -i 's/.*ZSH_THEME=.*/ZSH_THEME=ys/' ~/.zshrc

echo "export LC_ALL=C" >> ~/.zshrc
source ~/.zshrc
