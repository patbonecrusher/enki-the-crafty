#!/usr/bin/env zsh

adb shell "echo -n 'module msm_csid +plmf' > /sys/kernel/debug/dynamic_debug/control"
