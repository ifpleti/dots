#!/bin/sh

set -e

# variables
ZSH_DIR=${ZSH:-~/.dots}
REPO=${REPO:-ifpleti/dots}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
BRANCH=${BRANCH:-master}
DOTFILES_DIR=~/.dots/dotfiles

# exception
fmt_error() {
    echo "Error!!!: $@" >&2
}

# clone repo
git clone --depth=1 --branch "$BRANCH" "$REMOTE" "$ZSH_DIR" || {
    fmt_error "git clone of dots repo failed"
    exit 1
}
echo

# delete existing dotfiles
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.oh-my-zsh/themes/shades-of-purple.zsh-theme > /dev/null 2>&1

# create soft links
ln -sf $DOTFILES_DIR/.zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/.oh-my-zsh/themes/shades-of-purple.zsh-theme ~/.oh-my-zsh/themes/shades-of-purple.zsh-theme