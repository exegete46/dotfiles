# If running interactively, do not do anything.
[[ $- != *i*  ]] && return
[[ -x "$(which tmux)" ]] && [[ -z "$TMUX" ]] && [[ -f "$HOME/.auto_tmux" ]] && exec tmux

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="gentoo"

plugins=(git)
source $ZSH/oh-my-zsh.sh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export PATH="$HOME/go/bin/:$PATH"
export CDPATH="$CDPATH:$HOME/code/:$HOME/code/github/:$HOME/code/gitlab/:$HOME/Desktop/"

# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f "$(which kubectl)" ]] || source <(kubectl completion zsh)
[[ ! -f "$(which rbenv)" ]] || eval "$(rbenv init -)"
[[ ! -f "$(which gh)" ]] || eval "$(gh completion --shell=zsh)"

export PORT=3000

[[ ! -f "$HOME/.aliases" ]] || source $HOME/.aliases

export JOURNAL_PATH="$HOME/Desktop/journal/"

