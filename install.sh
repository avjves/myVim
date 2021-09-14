sudo apt install build-essential cmake python3-dev  -y
sudo apt install python3-neovim -y
cd ~
wget https://raw.githubusercontent.com/avjves/myVim/master/init.vim
mkdir -p .config/nvim
mv init.vim .config/nvim
cd .vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
cd ../
nvim +PluginInstall +qall
cd bundle
cd youcompleteme
python3 install.py
cd ~
echo "\nalias vim=nvim" >> .bashrc
