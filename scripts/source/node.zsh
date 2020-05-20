#!/usr/bin/env zsh

# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

# You have to use npm to install npm, and that will give you the
# completionaphe.sh file you need.
#source /opt/local/lib/node_modules/npm/lib/utils/completion.sh

alias npm-pop='npm outdated -g --depth=0'
alias npm-pupd='npm update -g'
alias npm-lg="npm list -g --depth=0 2>/dev/null"
alias npm-ll="npm list --depth=0 2>/dev/null"

# This is from snyk.io
# To check for package vulnerability
# Required by npq
export SNYK_TOKEN=79a75796-8784-427c-a1f4-3e106c9f95fe

alias npms='npq-hero'
alias yarns="NPQ_PKG_MGR=yarn npq-hero"

# Now using asdf
# prependToPath /Users/pat/.nvm/versions/node/v11.4.0/bin
# function nvm() {
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
#   [[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion

#   nvm "$@"
# }

# function node() {
#   unfunction node
#   unfunction npm
#   nvm use 11.4
#   node "$@"
# }

# function npm() {
#   unfunction node
#   unfunction npm
#   nvm use 11.4
#   npm "$@"
# }