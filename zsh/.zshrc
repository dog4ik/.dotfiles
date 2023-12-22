export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git copypath zsh-autosuggestions copyfile ssh-agent)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"

alias vim=nvim

source ~/.local/bin/key-bindings.zsh
source ~/.local/bin/completion.zsh

export PATH=$PATH:/usr/local/go/bin
eval "$(fnm env --use-on-cd)"
