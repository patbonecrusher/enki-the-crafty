
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


function upto ()
{
    if [ -z "$1" ]; then
        return
    fi
    local upto=$1
    cd "${PWD/\/$upto\/*//$upto}"
}

# I also have completion for this function, so that it gives me valid directory names and completion when I hit tab:
function _upto()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    local d=${PWD//\//\ }
    COMPREPLY=( $( compgen -W "$d" -- "$cur" ) )
}
#complete -F _upto upto

# In addition, I have another function jd which allows me to jump to any directory below the current one:
jd(){
    if [ -z "$1" ]; then
        echo "Usage: jd [directory]";
        return 1
    else
        cd **"/$1"
    fi
}


alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g CA="2>&1 | cat -A"
alias -g C='| wc -l'
alias -g D="DISPLAY=:0.0"
alias -g DN=/dev/null
alias -g ED="export DISPLAY=:0.0"
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ETL='|& tail -20'
alias -g ET='|& tail'
alias -g F=' | fmt -'
alias -g G='| egrep'
alias -g H='| head'
alias -g HL='|& head -20'
alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias -g LL="2>&1 | less"
alias -g L="| less"
alias -g LS='| less -S'
alias -g MM='| most'
alias -g M='| more'
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g R=' > /c/aaa/tee.txt '
alias -g RNS='| sort -nr'
alias -g S='| sort'
alias -g TL='| tail -20'
alias -g T='| tail'
alias -g US='| sort -u'
alias -g VM=/var/log/messages
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'
alias -g X='| xargs'

alias normalize_path='typeset -aU path'