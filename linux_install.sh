#/bin/bash

# it depends on curl, git

# install oh-my-zsh by curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# clone this github repo to ~/.dotfiles
git clone https://github.com/kikudjiro/.dotfiles.git

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.screenrc ~/.screenrc
mkdir ~/bin
ln -s ~/.dotfiles/bin/mcc ~/bin/mcc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.zshrc ~/.zshrc

