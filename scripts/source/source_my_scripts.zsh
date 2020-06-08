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
  git
  enki
  tmux
  vim
  vscode
  asdf
  coreutils
  better_ls
  node
  java
  tsc
  iterm
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

source_script_timed() { print -- $1; time ( source ${mydir}/${1}.zsh )}
source_script() { echo $1; source ${mydir}/${1}.zsh }
eachf source_script ${scripts[@]}


alias gccenter='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
alias ghci='stack ghci'
alias haskell='ghci'
