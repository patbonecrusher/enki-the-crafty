. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

eval "$(direnv hook zsh)"


alias adallow='asdf exec direnv allow .envrc'
alias areshim='asdf reshim'