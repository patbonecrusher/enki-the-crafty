test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function title_background_color {
  echo -ne "\033]6;1;bg;red;brightness;$ITERM2_TITLE_BACKGROUND_RED\a"
  echo -ne "\033]6;1;bg;green;brightness;$ITERM2_TITLE_BACKGROUND_GREEN\a"
  echo -ne "\033]6;1;bg;blue;brightness;$ITERM2_TITLE_BACKGROUND_BLUE\a"
}
ITERM2_TITLE_BACKGROUND_RED="18"
ITERM2_TITLE_BACKGROUND_GREEN="26"
ITERM2_TITLE_BACKGROUND_BLUE="33"
title_background_color
# Set iTerm2 tab title text
function title_text {
    echo -ne "\033]0;"$*"\007"
}
title_text freeCodeCamp

iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
  # iterm2_set_user_var gitRepo $((git remote show origin 2> /dev/null) | grep "Fetch URL:" | cut -c14-)
  #  iterm2_set_user_var badge $(dir_badges)
  # iterm2_set_user_var camel $(is_it_wednesday)
  # iterm2_set_user_var nodeVersion $(node -v)
}

# function is_it_wednesday() {
#   if [[ $(date +%A) = "Thursday" ]]
#     then
#      echo "🐪" # Camel Prompt
#   else
#     echo "🐙" # Inky Prompt
#   fi
# }

# function dir_badges() {
#     while read directory badge || [[ -n "$directory" ]]
#     do
#         if [[ "$PWD" == $directory* ]]; then
#             echo $badge
#             break
#         fi
#     done < ~/.badges
# }
