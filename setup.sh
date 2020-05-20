#!/usr/bin/env zsh

# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------
# [[ -z $1 ]] && { echo "You must specify a config file"; exit -1; }
# source $1

mydir=${(%):-%N}
mydir=`dirname $mydir`
mydir=${0:a:h}
echo $mydir

function setup_dotfiles ()
{
  dotfile_location="${1}"
  dotfiles=(`ls $dotfile_location`)
  destination="${2}"

  for dotfile in "${dotfiles[@]}"
  do
    fullpath_dest="${destination}"/."${dotfile}"
    fullpath_src="${dotfile_location}/${dotfile}"

    [[ -L "${fullpath_dest}" ]] && rm "${fullpath_dest}";
    if [[ -f "${fullpath_src}" ]]; then
      [[ -f "${fullpath_dest}" ]] && rm "${fullpath_dest}"
    fi

    ln -s "${fullpath_src}" "${fullpath_dest}"

  done
}

# git clone https://github.com/floor114/zsh-apple-touchbar ${mydir}/.zsh-apple-touchbar
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

git clone https://github.com/Tarrasch/zsh-functional.git ${mydir}/zsh-functional


echo ${mydir}/dotfiles ${mydir}/..
setup_dotfiles ${mydir}/dotfiles ${HOME}

# cd /tmp
# curl -L https://github.com/github/hub/releases/download/v2.6.1/hub-linux-amd64-2.6.1.tgz > hub.tgz
# tar xvzf hub.tgz
# cd hub-linux-amd64-2.6.1
# sudo prefix=/usr/local ./install
# rm -rf hub-linux-amd64-2.6.1
# rm hub.tgz

