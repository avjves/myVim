git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt install build-essential cmake python3-dev  -y
sudo apt install python3-neovim -y
cd ~
wget https://raw.githubusercontent.com/avjves/myVim/master/init-lite.vim
mkdir -p .config/nvim
mv init-lite.vim .config/nvim/init.vim
cd .vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
cd ../
nvim +PluginInstall +qall
cd
echo "alias vim=nvim" >> .bashrc
