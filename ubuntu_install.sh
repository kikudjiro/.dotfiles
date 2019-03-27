#/bin/bash

# it depends on curl, git

# install oh-my-zsh by curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.screenrc ~/.screenrc
mkdir ~/bin
ln -s ~/.dotfiles/bin/mcc ~/bin/mcc
ln -s ~/.dotfiles/bin/dsa ~/bin/dsa
ln -s ~/.dotfiles/bin/myip ~/bin/myip
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.zshrc ~/.zshrc

