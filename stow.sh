#!/usr/bin/env zsh
for i in `ls`
do
    if [[ ${i} != "stow.sh" ]]
    then
        stow ${1} $i
    fi
done
