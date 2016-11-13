#!/usr/bin/env zsh
for i in `ls`
do
  stow $i
done
