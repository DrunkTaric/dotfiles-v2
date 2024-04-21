export ZSH="$HOME/.oh-my-zsh"

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
