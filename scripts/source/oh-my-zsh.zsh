
export ZSH_CUSTOM=${omz_custom_location}
export ZSH=${ohmyzsh_location}


# export BULLETTRAIN_CONTEXT_DEFAULT_USER=pat
# export BULLETTRAIN_DIR_EXTENDED=0
# export BULLETTRAIN_PROMPT_ORDER=(
#  time
#  status
#  custom
#  context
#  dir
#  # perl
#  # virtualenv
#  nvm
#  aws
  # go
  # elixir
#  git
#  cmd_exec_time
#)

# setopt PROMPT_SUBST
# export BULLETTRAIN_PROMPT_CHAR="%{$(iterm2_prompt_mark)%} \$"
export NVM_LAZY_LOAD=true

#[[ -z $ZSH_THEME ]] && ZSH_THEME="bullet-train" #"apheleia"
#plugins=(git osx git-flow git-hubflow github history lol node rsync thefuck xcode zsh_reload)
#plugins=(git osx git-flow git-hubflow history lol node)
# plugins=($plugins $project_plugins)
[ -e "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"

