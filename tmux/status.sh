#!/bin/zsh

if [[ `pgrep -x openconnect` ]]
then
    VPN="VPN"
else
    VPN=""
fi

SYSTEM_BATTERY=$(acpi | grep -i Unknown | awk -F, '{print $2}' | awk '{$1=$1;print}')
KEYBOARD_BATTERY=$(cat /sys/class/power_supply/hid-04:db:56:db:5d:96-battery/capacity ||
                       cat /sys/class/power_supply/hid-e8:06:88:54:b1:d4-battery/capacity)
TRACKPAD_BATTERY=$(cat /sys/class/power_supply/hid-60:c5:47:81:45:70-battery/capacity ||
                       cat /sys/class/power_supply/hid-84:fc:fe:e2:b4:29-battery/capacity)

echo "${VPN} | ${SYSTEM_BATTERY} | ${KEYBOARD_BATTERY}% | ${TRACKPAD_BATTERY}%"
