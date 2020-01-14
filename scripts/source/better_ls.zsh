# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

mydir=${(%):-%N}
mydir=`dirname $mydir`

export LS_OPTIONS='--color=auto'

[[ "$(uname)" = "Darwin" ]] && eval `gdircolors ${mydir}/dircolors.zsh`

alias ls='ls ${LS_OPTIONS} --group-directories-first -hF'
alias ll='ls ${LS_OPTIONS} --group-directories-first -lhF'
alias l='ls ${LS_OPTIONS} --group-directories-first -lAhF'
alias c="clear"
alias e="exit"

# alias ls='colorls --gs -l --group-directories-first'
# alias la='colorls  --sd -l -A --group-directories-first'
# alias ll='colorls  --sd -l -A --group-directories-first'
# alias l='ls'
alias lsn='ls -ld *(/om[1])'