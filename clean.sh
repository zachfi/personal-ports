#! /bin/bash

tree=personal
jails=(znet13-1)
list=/home/zach/Code/personal-ports/personal.list

for jail in "${jails[@]}"; do
    sudo poudriere pkgclean -f $list -p $tree -j $jail
done
