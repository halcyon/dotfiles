export LC_CTYPE="en_US.UTF-8"
/usr/local/bin/dunst &
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 
/usr/X11R6/bin/xset r rate 200 50 b off
/usr/local/bin/xbindkeys
setxkbmap -option 'ctrl:swapcaps'
xidle -timeout 600 -program /usr/local/bin/slock &
dbus-run-session /usr/local/bin/stumpwm
