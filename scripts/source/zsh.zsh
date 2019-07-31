
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name''

[ -e "${enki_location}/.zsh_aliases" ] && source "${enki_location}/.zsh_aliases"
[ -e "${enki_location}/.zshrc_local" ] && source "${enki_location}/.zshrc_local"


# For tldr to work, I have to unalias it since something
# in oh-my-zsh is aliasing it to less
#unalias tldr

# TMOUT=1
# TRAPALRM() {
#     zle reset-prompt
# }

alias reload='source ~/.zshrc'
autoload -U compinit
compinit

#fpath=(/usr/local/lib/ruby/gems/2.5.0/gems/timetrap-1.15.1/completions/zsh $fpath)

source /usr/local/share/zsh/site-functions

bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

eval "$(direnv hook zsh)"

# `v` is already mapped to visual mode, so we need to use a different key to
# open Vim
bindkey -v
bindkey -M vicmd "^V" edit-command-line

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
# End of lines configured by zsh-newuser-install

function myjira {
	jira issue GP-$1
}

function myjirab {
	jira issue open GP-$1
}

alias j='myjira'
alias jb='myjirab'
