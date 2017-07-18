#!/bin/zsh

# KEYBOARD_BATTERY=$(cat /sys/class/power_supply/hid-04:db:56:db:5d:96-battery/capacity ||
#                    cat /sys/class/power_supply/hid-e8:06:88:54:b1:d4-battery/capacity)
# TRACKPAD_BATTERY=$(cat /sys/class/power_supply/hid-60:c5:47:81:45:70-battery/capacity ||
#                    cat /sys/class/power_supply/hid-84:fc:fe:e2:b4:29-battery/capacity)

if [[ `pgrep -x openconnect` ]]
then
    VPN="VPN"
else
    VPN=""
fi

if [[ $(amixer get Capture | sed -n '0,/.*\(\[on\]\|\[off\]\).*/ s//\1/p') == '[on]' ]]
then
    MICROPHONE="HOT"
else
    MICROPHONE="MUTED"
fi

LOCAL_TIME=$(date +%FT%T%:z)
ZULU_TIME=$(date -u +%FT%TZ)

case `uname` in
Darwin) echo "${LOCAL_TIME} | ${ZULU_TIME}"
        ;;
Linux) SYSTEM_BATTERY=$(acpi | awk -F, '{print $2}' | awk '{$1=$1;print}' | head -n1)
       echo -n "${VPN} | ${MICROPHONE} | ${SYSTEM_BATTERY} | ${LOCAL_TIME} | ${ZULU_TIME}"
       ;;
esac
