# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

mydir=${(%):-%N}
mydir=`dirname $mydir`


alias tsc110='export TSC_PATH=/home/pat/Projects/tsc/1.1.0 && export MANIF=102_master_1_1.xml && desk . tsc'
alias tscmm2a='export TSC_PATH=/home/pat/Projects/tsc/mm_2 && export MANIF=102_master_mm_2.xml && desk . tsc'
alias tscmm2='export TSC_PATH=/home/pat/Projects/tsc/mm_2 && export MANIF=102_master_mm_2.xml && desk . tsc'

alias repo-init='repo init -u ssh://plaplante@gerrit.d3engineering.com:29418/tsc/caf/platform/manifest -b d3/dev/open_q_820 -m'
alias repo-sync='repo sync -c --no-tags -j32'

function extract_release {
    cd ~/Download

    rm -rf delivery
    tar xvzf ${1}.tar.gz
    mv delivery ${1}
}

function install_release {
    ~/Projects/tsc/scripts/flash-release.sh ~/Downloads/${1}
}

alias adbrr='adb wait-for-device && adb root && sleep 0.1 && adb wait-for-device && adb remount'


function pull_logs {
    mkdir /tmp/$1
    adb root
    adb remount
    cd /tmp/$1
    adb pull /data/misc/logger
    cd /tmp
    t=$1_logs_`date +%s`
    tar cvzf $t.tgz $1
    mv $t.tgz ~/Downloads
}