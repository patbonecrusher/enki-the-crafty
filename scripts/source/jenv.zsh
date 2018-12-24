# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'
function init_jenv {
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
  export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
}

alias load-java-env='init_jenv'
