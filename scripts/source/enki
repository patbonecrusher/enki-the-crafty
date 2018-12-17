# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

mydir=${(%):-%N}
mydir=`dirname $mydir`

prependToPath ${mydir}/../bin

[[ "$(uname)" = "Darwin" ]] && export SHELL=/usr/local/bin/zsh
[[ "$(uname)" = "Darwin" ]] && alias rm='trash'
alias path='echo -e ${PATH//:/\\n}'

update() {
    local brew="brew update; brew upgrade;"
    local gisty="gisty pull_all; gisty sync_delete"
    local gem="gem update;"
    local pip="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U -q"
    local npm="npm update -g;"
    sh -c $brew$gisty$gem$npm; sudo sh -c $pip
}

cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

function man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}


gitr(){
    trap 'rm -f /tmp/.git_ssh.$$' 0
    SSH_KEY="~/.ssh/id_rsa"
    echo "ssh -i $SSH_KEY \$@" > /tmp/.git_ssh.$$
    chmod +x /tmp/.git_ssh.$$
    export GIT_SSH=/tmp/.git_ssh.$$
    [ "$1" = "git" ] && shift
    git "$@"
}

cats() {
    local out colored
    out=$(/bin/cat $@)
    colored=$(echo $out | pygmentize -f console -g 2>/dev/null)
    [[ -n $colored ]] && echo "$colored" || echo "$out"
}

export GISTY_DIR="$HOME/Projects/gists"

# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
# if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
#   . $LUNCHY_DIR/lunchy-completion.zsh
# fi


alias listopenport='sudo lsof -i -P | grep -i "listen"'
alias macinfo='archey'
alias diskinfo='diskutil list'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 
