#! /bin/bash

sudo -i bash -c portshaker -v

tree=personal
jail=larch12
list=personal.list

sudo poudriere bulk -f $list -p $tree -j $jail
