
# # Customise the Powerlevel9k prompts
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
#   custom_medium custom_freecodecamp dir vcs newline status
# )
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# # Add the custom Medium M icon prompt segment
# POWERLEVEL9K_CUSTOM_MEDIUM="echo -n $'\uf302'"
# POWERLEVEL9K_CUSTOM_MEDIUM_FOREGROUND="black"
# POWERLEVEL9K_CUSTOM_MEDIUM_BACKGROUND="white"
# # Add the custom freeCodeCamp prompt segment
# POWERLEVEL9K_CUSTOM_FREECODECAMP="echo -n $'\uE242' freeCodeCamp"
# POWERLEVEL9K_CUSTOM_FREECODECAMP_FOREGROUND="white"
# POWERLEVEL9K_CUSTOM_FREECODECAMP_BACKGROUND="red"
# # Load Nerd Fonts with Powerlevel9k theme for Zsh
# POWERLEVEL9K_MODE='nerdfont-complete'
# # source "${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/external/powerlevel9k/powerlevel9k.zsh-theme"
# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

alias dumpcolor='for i in {0..255}; do print -Pn "%K{$i} %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'}; done'