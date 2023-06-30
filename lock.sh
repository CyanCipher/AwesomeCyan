#!/bin/bash 

UNAME=$(awk -F':' -v uid=1000 '$3 == uid { print $1 }' /etc/passwd)
i3lock -e -k -i ~/.config/awesome/lock.jpg --bar-indicator --greeter-text "Hey, $UNAME!" --greeter-font Hack Nerd Font --greeter-pos "680:320" --bar-color 290200E2 --bar-max-height 15 --greeter-color FFFFFF --greeter-size 70 --time-size 50 --date-size 20 --time-color FFFFFF --date-color FFFFFF | systemctl suspend
