# dots
An easy setup script for my personal set of linux configuration files. based on:
- _ohmyzsh/ohmyzsh_
- _mattjmorrison/dotfiles_
- _Rigellute/shades-of-purple.vim_

## Installation
>1. Use the package manager to install part of the dependencies:  
>>Debian:
>>```console
>>$ sudo apt update && sudo apt install git curl zsh nodejs neovim
>>```
>
>>Arch:
>>```console
>>$ sudo pacman -S git curl zsh nodejs neovim
>>```

>2. Set Zsh as default:
>```console
>$ chsh -s $(which zsh)
>```

>3. Install Oh My Zsh:
>```console
>$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
>```

>4. Install zsh-autosuggestions:
>```console
>$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
>```

>5. Install vim-plug:
>```console
>$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
>       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
>```

>6. Dotfiles installation script:
>```console
>$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ifpleti/dots/master/install.sh)"
>```
