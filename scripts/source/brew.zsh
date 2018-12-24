# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

# prependToPath /usr/local/sbin
# prependToPath /usr/local/bin

[[ "$(uname)" = "Linux" ]] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
[[ "$(uname)" = "Linux" ]] && prependToPath /home/linuxbrew/.linuxbrew/bin

alias brew-check-update='brew bundle check'
alias brew-do-update='brew bundle cleanup'
alias brew-generate='brew bundle dump'


alias tl='tree -L'

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor; brew cu -f -a'

alias bsstart='brew services start'
alias bsstop='brew services stop'
alias bslist='brew services list'
alias bsrestart='brew services restart'

# mmv *.foo *.bar
# This zmv enables mass renaming feature.
# This is a zsh feature
autoload -U zmv
alias mmv='noglob zmv -W'
alias mancy='/Applications/Mancy.app/Contents/MacOS/Mancy'

function fuck() {
    eval $(thefuck --alias)
    fuck "$@"
}

function z() {
    unfunction z
    source `brew --prefix`/etc/profile.d/z.sh
    _z "$@"
}

function j() {
    (( $+commands[brew] )) && {
        local pfx=$(brew --prefix)
        [[ -f "$pfx/etc/autojump.sh" ]] && . "$pfx/etc/autojump.sh"
        j "$@"
    }
}