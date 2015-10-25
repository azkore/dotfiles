#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
GLOBIGNORE="none"

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
#files=".mc .ssh .bashrc .vimrc .vim .zshrc .oh-my-zsh"    # list of files/folders to symlink in homedir
cd $dir
linkfiles="*"
cd
createdirs=".vimbackup .vimswap .vimundo"

##########

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $linkfiles; do
  #echo "Moving any existing dotfiles from ~ to $olddir"
  [ -e ~/$file ] && [ ! -L ~/$file ] && ( set -x; mv ~/$file ~/dotfiles_old/ )
  #echo "Creating symlink to $file in home directory."
  [ ! -e ~/$file ] && ( set -x; ln -s $dir/$file ~/$file; )
  set +x
done

for dir in $createdirs; do [ ! -e ~/"$dir" ]  && mkdir ~/$dir; done
