
POWERLEVEL9K_MODE='nerdfont-complete'
source "${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/external/powerlevel9k/powerlevel9k.zsh-theme"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

alias h='history-stat'

if [[ "$ENABLE_CORRECTION" == "true" ]]; then
  alias cp='nocorrect cp'
  alias ebuild='nocorrect ebuild'
  alias gist='nocorrect gist'
  alias heroku='nocorrect heroku'
  alias hpodder='nocorrect hpodder'
  alias man='nocorrect man'
  alias mkdir='nocorrect mkdir'
  alias mv='nocorrect mv'
  alias mysql='nocorrect mysql'
  alias sudo='nocorrect sudo'

  setopt correct_all
fi
