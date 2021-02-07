# dots

An easy setup script for my personal set of linux configuration files. based on:
- _ohmyzsh/ohmyzsh_
- _mattjmorrison/dotfiles_
- _Rigellute/shades-of-purple.vim_


## What do I want to get the job done:

- zsh with oh-my-zsh and zsh-suggestions
- vim, vim-plug and some nice plugins
- pyenv and pipenv
- some themes


## Installation

1. Use your package manager to install these:  
   - zsh
   - curl
   - git
   - neovim
   - nodejs (for vim-plug)

2. [Install Oh My Zsh.](https://ohmyz.sh/#install)

3. [Install zsh-autosuggestions.](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

4. [Install vim-plug.](https://github.com/junegunn/vim-plug#Neovim)

5. Install pyenv:

   1. [pre-reqs](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)

   2. [pyenv](https://github.com/pyenv/pyenv-installer#installation--update--uninstallation)

7. [Install pipenv.](https://pipenv-es.readthedocs.io/es/latest/)

8. Run my script to install dotfiles:
```console
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ifpleti/dots/master/install.sh)"
```
