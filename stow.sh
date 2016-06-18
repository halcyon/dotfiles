#!/usr/bin/env zsh
for i in `ls`
do
    if [[ ${i} != "stow.sh" && ${i} != "LaunchAgents" ]]
    then
        stow $i
    fi
done

ln -sf ../../dotfiles/LaunchAgents/homebrew.mxcl.emacs.plist ~/Library/LaunchAgents
