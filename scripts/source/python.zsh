# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

[[ "$(uname)" = "Darwin" ]] && export PYTHON_CONFIGURE_OPTS="--enable-framework"
export PIPENV_VENV_IN_PROJECT="enabled"
export PYENV_ROOT="$HOME/.pyenv"
appendToPath $PYENV_ROOT/bin

function pyenv() {
    unfunction pyenv
    eval "$( command pyenv init - )"
    pyenv "$@"
}

alias py_install='CPPFLAGS="-I$(brew --prefix zlib)/include" pyenv install -v'