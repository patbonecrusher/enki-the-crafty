# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

scripts=(
  preztzo
  brew
  zsh
  aws
  enki
  git
  tmux
  vim
  vscode
  asdf
  coreutils
  better_ls
  java
  tsc
#  1password
#  python
#  iterm
  #antigen
  #oh-my-zsh
#  enki
#  vscode
#  vim
#  better_ls
#  go
#  jenv
#  rbenv
#  ssh
#  node
#  elixir
#  aws
#  git
#  android
#  react-native
#  tiny-care-terminal
#  tmux
#  sdkman
#  1password
#  jabba
#  tsc
)

checkPath () {
        case ":$PATH:" in
                *":$1:"*) return 1
                        ;;
        esac
        return 0;
}

# Prepend to $PATH
prependToPath () {
        for a; do
                checkPath $a
                if [ $? -eq 0 ]; then
                        PATH=$a:$PATH
                fi
        done
        export PATH
}

# Append to $PATH
appendToPath () {
        for a; do
                checkPath $a
                if [ $? -eq 0 ]; then
                        PATH=$PATH:$a
                fi
        done
        export PATH
}

removeFromPath() {
        PATH=$(echo $PATH| sed -e 's!'$rmv'!!' -e 's/::/:/')
        export PATH
}

mydir=${0:a:h}
for script in "${scripts[@]}"
do
#  { time (
#    echo $script
#    source ${mydir}/${script}.zsh
#  ) }
    source ${mydir}/${script}.zsh

done
