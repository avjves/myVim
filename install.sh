sudo apt install vim-nox build-essential cmake python3-dev npm nodejs  -y
sudo apt install python3-neovim neovim -y
cd ~
wget https://raw.githubusercontent.com/avjves/myVim/master/init.vim
mkdir -p .config/nvim
mv init.vim ../.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
cd ../
vim +PluginInstall +qall
cd bundle
cd youcompleteme
python3 install.py --ts-completer
cd ~
echo "\nalias vim=nvim" >> .bashrc
