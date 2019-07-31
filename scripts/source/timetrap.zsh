# -----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <bonecrusher@covenofchaos.com>  wrote this file.  As long as  you retain this
# notice you can do whatever you want with this stuff.  If we meet some day and
# you think this stuff is worth it, you can buy me a beer in return.
#  > BoneCrusher <
# -----------------------------------------------------------------------------

# edit an existing entry: (entry 22)
t -i22 e --start "23:15 yesterday"
t -i22 e --end "23:15 today"
t -i22 e some description

# normal
t in --at "13:00"
t e some description
t out --at "14:00"

# export 1 week as csv
t d  -s "July 1" -e "July 7th" -f csv

## Add a method to dump the current week and one to dump last week.
## Find a way to find out the beginning of the week in zsh