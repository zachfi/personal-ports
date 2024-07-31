#! /bin/bash

if [ -z $1 ]; then
    echo "Please specify port"
    exit 1
fi

port=$1

# if [ -d $port ]; then
#     pushd $port
#     rm distinfo
#     make makesum
#     git add distinfo
#     git ci distinfo -m "Update distinfo for ${port}"
#     popd
#
#     git push
# fi

tree=personal
jail=pkg14-1

sudo -i bash -c portshaker -v
sudo poudriere testport -i -p $tree -j $jail $port
