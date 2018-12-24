
source "${enki_location}/antigen.zsh"
antigen use oh-my-zsh
antigen bundle git

source "${enki_location}/.zsh-apple-touchbar/zsh-apple-touchbar.zsh"


# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

export NVM_LAZY_LOAD=true
export NVM_NO_USE=true
antigen bundle lukechilds/zsh-nvm

antigen bundle chrissicool/zsh-256color

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    # antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

