#!/bin/bash

#check that we will be able to clone things
echo "has github been set up with ssh? (y/n)"
read user_input

if [ $user_input = "n" ]; then
    echo "then why are you here?"
    exit 1
else
    echo "great, i'll proceed then"
    sleep 2
fi
echo ""


#set up tmux
sudo apt install tmux
echo "source ~/applications/terminal_config_files/tmux.conf" > ~/.tmux.conf
echo "tmux installed"
echo ""

#set up vim
sudo apt install vim
echo "source ~/applications/terminal_config_files/vimrc" > ~/.vimrc
echo "vim installed"
echo ""


#make sure all necessary directories exist
cd
direcory=".vim"
if [ ! -d "$directory" ]; then
    mkdir .vim
    echo "created .vim dir"
else
    echo ".vim already exists"
fi
cd .vim
direcory="autoload"
if [ ! -d "$directory" ]; then
    mkdir autoload 
    echo "created autoload dir\n"
else
    echo "autoload already exists"
fi
direcory="bundle"
if [ ! -d "$directory" ]; then
    mkdir bundle 
    echo "created bundle dir"
else
    echo "bundle already exists"
fi
echo "directories set up correctly"
echo ""

#get pathogen (needed to handle plugins)
cd ~/applications
echo "attempting to clone pathogen"
git clone git@github.com:tpope/vim-pathogen.git
cp vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/
echo ""

#get the funzzy finder and run it's installer
#just placing it in the bundle installs it to vim, but we want it in the terminal too
#so that's why we have to run the installer
cd ~/.vim/bundle
git clone git@github.com:junegunn/fzf.git
./fzf/install
echo ""


#get visual incrementer
git clone git@github.com:jikkujose/vim-visincr.git 
echo ""
echo "good to go!"
