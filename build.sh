#! /bin/bash
set -e

sudo -i portshaker -v

tree=personal
jails=(pkg14-3)
list=/home/zach/Code/personal-ports/personal.list

for jail in "${jails[@]}"; do
    # sudo poudriere bulk -f /usr/local/etc/poudriere.d/$jail.list -p $tree -j $jail
    sudo poudriere bulk -f $list -p $tree -j $jail -J 2
done
