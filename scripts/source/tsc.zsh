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
alias tscmm2='export TSC_PATH=/home/pat/Projects/tsc/mm_2 && export MANIF=102_master_mm_2.xml && desk . tsc'

alias repo-init='repo init -u ssh://plaplante@gerrit.d3engineering.com:29418/tsc/caf/platform/manifest -b d3/dev/open_q_820 -m'
alias repo-sync='repo sync -c --no-tags -j32'
