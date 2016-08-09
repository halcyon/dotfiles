#!/bin/sh
# script to change the dynamic lib paths and ids for oracle instant client
# exes and libs

# proces all the executable files in this directory
find . -maxdepth 1 -type f \( -perm -1 -o \( -perm -10 -o -perm -100 \) \) -print | while read exe
do
  echo adjusting executable $exe
  baseexe=`basename $exe`
  otool -L $exe | awk '/oracle/ {print $1}' | while read lib
  do
    echo adjusting lib $lib
    baselib=`basename $lib`
    if [ "$baseexe" = "$baselib" ]
      then
        echo changing id to $baselib for $exe
        install_name_tool -id $baselib $exe
      else
        echo changing path id for $lib in $exe
        install_name_tool -change $lib @executable_path/$baselib $exe
    fi
  done
done
