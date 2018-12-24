# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

function sdk() {
    unfunction sdk
    #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
    export SDKMAN_DIR="/Users/pat/.sdkman"
    [[ -s "/Users/pat/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pat/.sdkman/bin/sdkman-init.sh"
    sdk "$@"
}
