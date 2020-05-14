sudo apt install vim-nox -y
cd ~
wget https://raw.githubusercontent.com/avjves/myVim/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd .vim
mkdir colors

## Install youcompleteme
sudo apt install build-essential cmake vim python3-dev npm nodejs -y
cd bundle
cd youcompleteme
python3 install.py --ts-completer
