# dots
An easy setup script for my personal set of linux configuration files. based on:
- _ohmyzsh/ohmyzsh_
- _mattjmorrison/dotfiles_
- _Rigellute/shades-of-purple.vim_

## Installation
Install dependencies for Debian and Debian based distros:
```console
$ sudo apt update && sudo apt install git curl zsh nodejs neovim
```
Or install dependencies for Arch and Arch based distros:
```console
$ sudo pacman -S git curl zsh nodejs neovim
```
Set Zsh as default:
```console
$ chsh -s $(which zsh)
```
Install Oh My Zsh:
```console
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Install zsh-autosuggestions:
```console
$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Install vim-plug:
```console
$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Dotfiles installation script:
```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ifpleti/dots/master/install.sh)"
```
