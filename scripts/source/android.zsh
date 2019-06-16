# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

#function init_android {
#  export ANDROID_SDK_ROOT=/Users/pat/Library/Android/sdk
#  export ANDROID_HOME=/Users/pat/Library/Android/sdk
#  export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
#}

#alias load-android-env='load-java-env && init_android'
#alias load-n6p-emu='$ANDROID_SDK_ROOT/emulator/emulator @Nexus_6P_API_26'

alias arf='adb reboot bootloader'
alias versions='adb shell getprop | grep version'
alias adbrr='adb root && adb remount'
alias adbrr2='adb wait-for-device && adb root && sleep 0.1 && adb wait-for-device && adb remount'

alias txvzf='tar xvzf'

alias tsc='cd ~/Projects/tsc && export AWS_DEFAULT_PROFILE=d3'
alias tsc-ssft='export AWS_DEFAULT_PROFILE=d3 && aws s3 sync s3://tsc-build-virginia s3://tsc-build-tokyo'
alias tsc-download='wget https://files.d3engineering.com/tsc/development/mm2_master/latest_mm2_master_userdebug\?region\=${REGION} --ask-password --user=plaplante --trust-server-names'
