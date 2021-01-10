#/etc/bash


sudo apt-get install vim git curl build-essential cmake vim-nox python3-dev python python3 python3-pip mono-complete nodejs default-jdk npm

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd $HOME

git clone https://github.com/MuratSs/my-linux-prep.git 

cd my-linux-prep

cp ./.vimrc  /$HOME

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe

python3 install.py --all

cd $HOME