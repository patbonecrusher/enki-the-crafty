# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

function init_android {
  export ANDROID_SDK_ROOT=/Users/pat/Library/Android/sdk
  export ANDROID_HOME=/Users/pat/Library/Android/sdk
  export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
}

alias load-android-env='load-java-env && init_android'
alias load-n6p-emu='$ANDROID_SDK_ROOT/emulator/emulator @Nexus_6P_API_26'