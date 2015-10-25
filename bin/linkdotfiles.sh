#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
#files=".mc .ssh .bashrc .vimrc .vim .zshrc .oh-my-zsh"    # list of files/folders to symlink in homedir
cd $dir
linkfiles=".* *"
cd
createdirs=".vimbackup .vimswap .vimundo"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $linkfiles; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  echo mv ~/$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  echo ln -s $dir/$file ~/$file
done

for dir in $createdirs; do [ ! -e "$dir" ]  && mkdir $dir; done
