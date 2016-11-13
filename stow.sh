#!/usr/bin/env zsh
for i in `ls`
do
  if [[ ${i} != "stow.sh" && ${i} != "oracle" ]]
  then
    stow $i
  fi
done
