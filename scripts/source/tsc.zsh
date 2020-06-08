# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

mydir=${(%):-%N}
mydir=`dirname $mydir`

prependToPath ${mydir}/../bin.tsc

# Lens aliases
alias lens='${mydir}/../bin.tsc/lens'
alias push_xmc='${mydir}/../bin.tsc/push_xmc.sh'
alias get_graphs='lens log_data'

# Overall repo command
alias repo-init='repo init -u ssh://plaplante@gerrit.d3engineering.com:29418/tsc/caf/platform/manifest -b d3/dev/open_q_820 -m'
alias repo-sync='repo sync -c --no-tags -j32'


alias tsc110='export TSC_PATH=/home/pat/Projects/tsc/1.1.0 && export MANIF=102_master_1_1.xml && desk . tsc'
alias tscmm2a='export TSC_PATH=/home/pat/Projects/tsc/mm_2 && export MANIF=102_master_mm_2.xml && desk . tsc'
alias tscmm2='export TSC_PATH=/home/pat/Projects/tsc/mm_2 && export MANIF=102_master_mm_2.xml && desk . tsc'


function get_lbs1_release {
    rm delivery.tar.gz
    scp lbs1:tsc/mm2/out/target/product/phoenix8996/delivery.tar.gz .
}

function pull_latest_master {
    wh=`gdate -d "yesterday 22:52" '+%Y%m%d_%H%M'`
    [[ -f /tmp/mm2_ud_${wh}.tar.gz ]] || wget --output-document /tmp/mm2_ud_${wh}.tar.gz "https://files.d3engineering.com/tsc/master/mm2_master/${wh}/phoenix_mm2_master_${wh}_userdebug_img.tar.gz?region=virginia"
}

function extract_release {
    tar xvzf ${1}.tar.gz -C /tmp
    mv /tmp/delivery ${1}
}


function recovery_mode {
    adb reboot recovery
}

function bootloader_mode {
    adb reboot bootloader
}



alias adbrr='adb wait-for-device && adb root && sleep 0.1 && adb wait-for-device && adb remount'
alias bfb='adb reboot bootloader'
alias band='fastboot reboot'
alias rbb='adb reboot'

alias logcat='adb shell logcat | tee `date +%Y%m%d_%H%M`.log'
alias camversions='adb shell getprop | grep version'

function pull_logs {
    cwd=`pwd`
    mkdir /tmp/$1
    adb root
    adb remount
    cd /tmp/$1
    adb pull /data/misc/logger
    cd /tmp
    t=$1_logs_`date +%s`
    tar cvzf $t.tgz $1
    mv $t.tgz ~/Downloads
    cd ${cwd}
}

alias run_att_rsync_limited='rsync -azvh --stats --progress --bwlimit=2000000 -e "ssh" attachments infilesd3:/srv/files/tsc/jira'
alias run_att_rsync='rsync -azvh --stats --progress -e "ssh" attachments infilesd3:/srv/files/tsc/jira'
alias monitor_changes='run_att_rsync; fswatch -o attachments | while read f; do run_att_rsync; done'
alias monitor_changes_limited='run_att_rsync_limited; fswatch -o attachments | while read f; do run_att_rsync_limited; done'

alias rt2='(cd ~/Projects/tsc/automation/test_scripts && pytest -q -s tests/test_af_overlap.py)'
export PYTHONPATH=~/Projects/tsc/automation/test_scripts:~/Projects/tsc/automation/test_scripts/..:~/Projects/tsc/automation/test_scripts/../common
export USB_DRIVE="/tmp"

function start_test {
	export BASE_TESTOUT=$HOME/usbdrv/testout
	cwd=`pwd`
	cd ~/Projects/automation/test_scripts
	python3 start_up_station.py -t rail_tests -o $BASE_TESTOUT -m Rail
	cd $cwd
}


