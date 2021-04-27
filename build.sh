#! /bin/bash

sudo -i portshaker -v

tree=personal
jails=(larch13 larch12)
list=/home/zach/Code/personal-ports/personal.list

for jail in "${jails[@]}"; do
    sudo poudriere bulk -f /usr/local/etc/poudriere.d/$build.list -p $tree -j $build
done

sudo poudriere bulk -f $list -p $tree -j $jail
