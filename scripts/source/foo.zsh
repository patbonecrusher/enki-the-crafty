# command line go links
# just copy this to ~/.go.bash and source it
# add new commands below

function go () {
    # self update
    source ~/.go.bash

    # indirect call
    NAME="$1"
    shift
    if [ -n "$NAME" ]
    then
        __go:$NAME "$@"
    else
        __go:commands
    fi         
}

function __go:commands() {
    compgen -A function "__go:" | cut -d: -f 2
}

# add functions here
function __go:sf() {
    cd ~/src/symbiflow-arch-defs/build && nix-shell ~/nix/sf-shell.nix
}

function __go:bit2vivado() {
    source ~/src/prjxray/database/artix7/settings.sh
    source ~/src/prjxray/minitests/roi_harness/basys3-swbut.sh
    unzip ~/Downloads/test_synth.zip
    bash runme.sh
}

function __go:show() {
    declare -f __go:$1
}

function __go:test() {
    echo "test"
}

# update completions
complete -W "`__go:commands`" go
