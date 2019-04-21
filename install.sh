#!/bin/bash

# Get current dir
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/ackrc" "$HOME/.ackrc"
ln -sfv "$DOTFILES_DIR/aliases" "$HOME/.aliases"
ln -sfv "$DOTFILES_DIR/ctags" "$HOME/.ctags"
ln -sfv "$DOTFILES_DIR/eslint" "$HOME/.eslint"
ln -sfv "$DOTFILES_DIR/gemrc" "$HOME/.gemrc"
ln -sfv "$DOTFILES_DIR/rspec" "$HOME/.rspec"
ln -sfv "$DOTFILES_DIR/rubocop.yml" "$HOME/.rubocop.yml"
ln -sfv "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

# Install neovim
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -sfv "$DOTFILES_DIR/vimfiles/vimrc" "$XDG_CONFIG_HOME/nvim"
ln -sfv "$DOTFILES_DIR/vimfiles/vimrc" "$XDG_CONFIG_HOME/vim/init.vim"
ln -sfv "$DOTFILES_DIR/vimfiles/projections.json" "$HOME/.projections.json"
