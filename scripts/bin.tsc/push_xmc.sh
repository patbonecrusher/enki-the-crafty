#!/usr/bin/env bash

set -e

cwd=`pwd`

function finish {
    cd "${pwd}"
}

trap finish EXIT

adb root    &>/dev/null
sleep 0.5
adb remount &>/dev/null

adb push /Users/pat/Projects/tsc/lens_fw/TSC_VSM/build/gcc_m4/xmc_lens.hex /etc/firmware
adb shell phoenix_upload_firmware lens
adb reboot

