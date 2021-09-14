sudo apt install vim-nox -y
cd ~
wget https://raw.githubusercontent.com/avjves/myVim/lite/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
cd ../
vim +PluginInstall +qall
