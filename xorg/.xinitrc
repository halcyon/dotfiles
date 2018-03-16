#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[[ -x /usr/bin/dunst ]] && /usr/bin/dunst &

if [ -x ~/.pyenv/shims/gcalcli ]
  then
  while true; do
    /usr/bin/gcalcli --calendar="smcleod@rentpath.com" --calendar="IDG Services" remind
    sleep 300
  done &
fi

/usr/bin/xhost + local:docker
/usr/bin/xset s 600
/usr/bin/xss-lock slock &
/usr/bin/xbindkeys
/usr/bin/xset r rate 200 50
exec sbcl --load ~/dotfiles/stumpwm/startstump > stumpwm.log 2>&1
