#!/bin/bash

dotfiles=$(pwd)
existing_dotfiles=~/existing_dotfiles
files=".vim .bashrc .vimrc .inputrc .gitconfig .bash_aliases .latexmkrc
.style.bash"

# Clone Vundle first
git clone https://github.com/VundleVim/Vundle.vim.git $dotfiles/.vim/bundle/Vundle.vim

# Install all plugins
vim +PluginInstall +qall

# Compile YouCompleteMe
if [ -e $dotfiles/.vim/bundle/YouCompleteMe/install.py ]
then
  echo "++ Compiling YouCompleteMe!"
  cd $dotfiles/.vim/bundle/YouCompleteMe/
  ./install.py --clang-completer
fi

#Create existing_dotfiles folder in home directory
echo "Creating folder for backup of any existing dotfiles"
mkdir -p $existing_dotfiles

cd $dotfiles

# Create symbolic links
for file in $files; do
  if [ -e ~/$file ]
  then
    echo "Move existing $file file"
    mv ~/$file $existing_dotfiles
  fi
  echo "Creating symlink to $file in home directory"
  ln -s $dotfiles/$file ~/$file
done

# Return where we started
cd ~/
echo "++ Installation completed!"
