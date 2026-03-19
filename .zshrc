alias v="nvim"
alias vim="nvim"
alias ls="ls --color=auto -a"
autoload -Uz compinit && compinit
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '

HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
