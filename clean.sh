#! /bin/bash

tree=personal
jails=(larch13 larch12)
list=/home/zach/Code/personal-ports/personal.list

for jail in "${jails[@]}"; do
    sudo poudriere pkgclean -f $list -p $tree -j $jail
done
