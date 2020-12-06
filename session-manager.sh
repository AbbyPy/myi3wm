#!/bin/sh
# lock: i3lock
# logout: i3-msg exit
# suspend: i3lock && systemctl suspend
# hibernate: i3lock && systemctl hibernate
# reboot: systemctl reboot
# shutdown: systemctl poweroff

ask=`zenity --list --title="SESSION MANAGER" --column="0" "BLOCCA" "ESCI" "SOSPENDI" "IBERNA" "RIAVVIA" "SPEGNI" --width=100 --height=300 --hide-header`

if [ "$ask" == "BLOCCA" ]; then
    i3lock
fi

if [ "$ask" == "ESCI" ]; then
    i3-msg exit
fi

if [ "$ask" == "SOSPENDI" ]; then
    i3lock && systemctl suspend
fi

if [ "$ask" == "IBERNA" ]; then
    i3lock && systemctl hibernate
fi

if [ "$ask" == "RIAVVIA" ]; then
    systemctl reboot
fi

if [ "$ask" == "SPEGNI" ]; then
    systemctl poweroff
fi
exit 0
