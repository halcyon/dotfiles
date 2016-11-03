#!/usr/bin/env zsh
for i in `ls`
do
    if [[ ${i} != "stow.sh" && ${i} != "iterm2" && ${i} != "oracle" && ${i} != "docker" ]]
    then
        stow $i
    fi
done
