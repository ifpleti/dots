#!/bin/sh

set -e

# variables
CLONE_DIR=~/.dots
REPO=${REPO:-ifpleti/dots}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
BRANCH=${BRANCH:-master}
DOTFILES_DIR=${CLONE_DIR}/dotfiles

# exception stdout
fmt_error() {
    echo "ERROR: $@" >&2
}

# clone repo
git clone --depth=1 --branch "$BRANCH" "$REMOTE" "$CLONE_DIR" || {
    fmt_error "git clone of dots repo failed"
    exit 1
}
echo

# delete existing dotfiles
echo "Removing already existing dotfiles..."
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.oh-my-zsh/themes/shades-of-purple.zsh-theme > /dev/null 2>&1
sudo rm -rf ~/.config/nvim/init.vim > /dev/null 2>&1

# create soft links
echo "Creating soft links for the new dotfiles..."
ln -sf $DOTFILES_DIR/.zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/shades-of-purple.zsh-theme ~/.oh-my-zsh/themes/shades-of-purple.zsh-theme
ln -sf $DOTFILES_DIR/init.vim ~/.config/nvim/init.vim

# install vim pluggins
echo "Installing Vim pluggins..."
nvim -Es -u "$HOME/.config/nvim/init.vim" +PlugClean +PlugInstall > /dev/null 2>&1 || true

echo "Done."
