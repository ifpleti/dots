# dots
An easy setup script for my personal set of linux configuration files. based on:
- _ohmyzsh/ohmyzsh_
- _mattjmorrison/dotfiles_
- _Rigellute/shades-of-purple.vim_

## Prerequisites
### Script:
- git
- curl
### Config:
- zsh
- https://ohmyz.sh/
- https://github.com/zsh-users/zsh-autosuggestions
- nodejs
- neovim
- https://github.com/junegunn/vim-plug#Neovim

## Installation
- Debian based:
```console
$ sudo apt update && sudo apt install git curl zsh nodejs neovim
```
- Arch based:
```console
$ sudo pacman -S git curl zsh nodejs neovim
```
- Zsh, Oh My Zsh and vim-plug:
```console
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- Installation script:
```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ifpleti/dots/master/install.sh)"
```
