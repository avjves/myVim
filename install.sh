sudo apt install vim-nox -y
cd ~
wget https://raw.githubusercontent.com/avjves/myVim/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
cd ../
vim +PluginInstall +qall

## Install youcompleteme
sudo apt install build-essential cmake vim python3-dev npm nodejs -y
cd bundle
cd youcompleteme
python3 install.py --ts-completer
