#!/bin/bash
if [ "$@" ]
then
    case $1 in
        Shutdown)
            systemctl poweroff -i
        ;;
        Reboot)
            systemctl reboot
        ;;
        Logout)
            bspc quit
        ;;
        Lock)
            killall rofi && blurlock
        ;;
        Suspend)
           systemctl suspend
        ;;
    esac
else
    echo "Shutdown"
    echo "Reboot"
    echo "Logout"
    echo "Lock"
    echo "Suspend"
fi
