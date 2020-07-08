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
    # ~/.pyenv/shims/gcalcli --configFolder ~/.gcalcli-rentpath --calendar="smcleod@rentpath.com" --calendar="IDG Services" remind 120
    ~/.pyenv/shims/gcalcli --configFolder ~/.gcalcli-halcyonblue --calendar="halcyonblue@gmail.com" remind 120
    sleep 300
  done &
fi

while true; do
    ~/dotfiles/notmuch/notmuch-notification.sh
    sleep 300
done &

eval `gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh`
export GNOME_KEYRING_CONTROL
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_PID

/usr/bin/xhost + local:docker
/usr/bin/xset s 300 r rate 200 50 b off
/usr/bin/xss-lock slock &
/usr/bin/xbindkeys
#/usr/bin/ssh-agent

#exec sbcl --load ~/dotfiles/stumpwm/startstump > stumpwm.log 2>&1
