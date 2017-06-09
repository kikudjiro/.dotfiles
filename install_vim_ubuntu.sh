# Install Vim on Ubuntu/Debian with lua to support few cool plugins

# 0. Remove any Vim cruft that might already be on your system
sudo apt-get -y remove --purge vim vim-runtime vim-gnome gvim vim-tiny vim-common vim-gui-common

# 1.1. Install vim-nox, a nice Vim starter package
sudo apt-get -y install vim-nox

# 1.2. Rebuild vim from sources with Lua support; Lua is needed by some plugins?
sudo apt-get -y install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev mercurial libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev

sudo mkdir /usr/include/lua5.1/include
sudo ln -s /usr/include/luajit-2.0 /usr/include/lua5.1/include

# install ruby (actually, rvm + ruby)
sudo apt-get -y install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
 
cd ~
git clone https://github.com/vim/vim.git
cd vim
make distclean
./configure --with-features=huge \
    --enable-rubyinterp \
    --enable-largefile \
    --disable-netbeans \
    --enable-pythoninterp \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --enable-perlinterp \
    --enable-luainterp \
    --with-luajit \
    --enable-gui=auto \
    --enable-fail-if-missing \
    --with-lua-prefix=/usr/include/lua5.1 \
    --enable-cscope 

make

sudo make install

sudo mkdir /usr/share/vim
sudo mkdir /usr/share/vim/vim74
sudo cp -fr runtime/* /usr/share/vim/vim74/

sudo ln -s /usr/local/bin/vim /usr/bin/vim
sudo ln -s /usr/local/bin/vim /usr/bin/vi


# 2. Install NeoBundle

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ./install_NeoBundle.sh
sh ./install_NeoBundle.sh
rm -rf ./install_NeoBundle.sh

# 4. run `vim`
# it installs/update NeoBundle packages
# say `yes` to update NeoBundle and its packages
cd ~
vim

