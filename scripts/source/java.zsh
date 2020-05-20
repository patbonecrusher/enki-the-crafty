
[ -e "~/.asdf/plugins/java/set-java-home.sh" ] && . ~/.asdf/plugins/java/set-java-home.sh
[ -e "~/.asdf/plugins/java/asdf-java-wrapper.zsh" ] && . ~/.asdf/plugins/java/asdf-java-wrapper.zsh

# Functional programming map function stops if the 
# last line of a script is a source command.
# Not sure why
echo '' > /dev/null
