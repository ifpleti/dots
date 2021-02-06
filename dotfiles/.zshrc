export ZSH="/home/pleti/.oh-my-zsh"

ZSH_THEME="shades-of-purple"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


## pyenv
export PATH="/home/pleti/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

## neovim
alias vim="nvim"
