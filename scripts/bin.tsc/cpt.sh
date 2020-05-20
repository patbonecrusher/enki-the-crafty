#!/usr/bin/env bash

set -e

cwd=`pwd`

function finish {
    echo "going back"
    cd "${pwd}"
}

trap finish EXIT

adb root    &>/dev/null
adb remount &>/dev/null

cd /Users/pat/Projects/tsc/automation/test_scripts/lens
python lens.py $@ 
echo "after"

