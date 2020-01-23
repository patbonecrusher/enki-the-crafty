# This was from kernel class
#export SOLUTIONS=/home/pat/LFT/LFD435/SOLUTIONS

#if [[ -f $SOLUTIONS/s_04/LFD_bashrc ]]; then
#	source $SOLUTIONS/s_04/LFD_bashrc
#fi

#alias genmake='KROOT=$HOME/Projects/class/linux-4.20 $SOLUTIONS/genmake'
#alias make_install='make && sudo make ARCH=arm INSTALL_MOD_PATH=/srv/bbb modules_install'

[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
stty -ixon

