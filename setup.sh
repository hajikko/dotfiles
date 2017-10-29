#!/bin/sh

# setup oh-my-zsh
~/dotfiles/oh-my-zsh/tools/install.sh | ZSH=~/dotfiles/oh-my-zsh sh

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.profile ~/.profile
ln -sf ~/dotfiles/.zsh_profile ~/.zsh_profile
