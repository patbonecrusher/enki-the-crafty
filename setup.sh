#!/usr/bin/env zsh

# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------
[[ -z $1 ]] && { echo "You must specify a config file"; exit -1; }
source $1

mydir=${0:a:h}

function setup_omyzsh {
  if [[ ! -d "${mydir}/.oh-my-zsh" ]]; then
  	(cd "${mydir}" && git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh)
  else
  	(cd "${mydir}/.oh-my-zsh" && git pull origin master)
  fi
}

function setup_dotfile {

}
