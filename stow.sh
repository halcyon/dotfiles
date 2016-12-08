#!/usr/bin/env zsh
for i in `ls`
do
  if [[ ${i} != "stow.sh" && ${i} != "oracle" && ${i} != "xorg.conf.d" ]]
  then
    stow $i
  fi
done

sudo stow xorg.conf.d -t /etc/X11
sudo stow sysctl.d -t /etc
