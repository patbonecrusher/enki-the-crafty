# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

# set -x
function opl() {
    if [[ -z ${OP_SESSION_thelaplante} ]]; then 
        eval $(op signin thelaplante)
    fi
    [[ ! -z ${OP_SESSION_thelaplante} ]] && op "$@"
}

function gpass() {
    op get item ${1} | jq '.details.fields[] | select(.designation=="password").value'
}

alias -g PASS='gpass'

function load_gerrit_key() {
    k=`op get item gerrit-ssh  | jq .details.password`
    echo $k
    ssh-add ~/.ssh/gerrit ${k}
}

alias lgsk='load_gerrit_key'

#
# NOTE
#
# Doing:
# op signin <subdomain> --output=raw
# return a token
#
# op list items --session=<sessiontoken>
#
# We could keep the token in an env var.
# 
# or we could store a bit in an env to know when we have logged in successfully.