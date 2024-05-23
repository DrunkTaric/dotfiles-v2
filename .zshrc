export ZSH="$HOME/.oh-my-zsh"
export DENO_INSTALL="/home/comborush/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

## pyenv configs
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## thefuck
eval $(thefuck --alias)

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias top="bpytop"
alias ls="lsd"
alias lg="lazygit"
alias nf="neofetch"

# ocaml
[[ ! -r /home/comborush/.opam/opam-init/init.zsh ]] || source /home/comborush/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# ========================
# ======= Keybinds =======
# ========================

# going to my projects with one key press (CTRL + F).
bindkey -s '^F' "cd ~/Projects && tmux new -c $\(find * -type d -maxdepth 1 | fzf)"

# source my zsh and copy it to the .config (CTRL + T) 
bindkey -s '^T' "source ~/.zshrc && cp ~/.zshrc ~/.config/.zshrc"
