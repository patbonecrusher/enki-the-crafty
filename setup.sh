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

function setup_ohmyzsh {
  destination="${1}"
  if [[ ! -d "${destination}/.oh-my-zsh" ]]; then
  	(cd "${destination}" && git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh)
  else
  	(cd "${destination}/.oh-my-zsh" && git pull origin master)
  fi
}

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

git clone https://github.com/floor114/zsh-apple-touchbar ${mydir}/.zsh-apple-touchbar

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# setup_ohmyzsh ${mydir}
# setup_dotfiles ${mydir}/dotfiles ${mydir}/..
