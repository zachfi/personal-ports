#! /usr/local/bin/bash

. ./lib/portsnap.sh

set -e

VERSION=$1
PORT=$2

if [ -z "$VERSION" ]; then
    echo "version required"
fi

if [ -z "$PORT" ]; then
    echo "port required"
fi

TAG_VER=$(echo $VERSION | sed -e '/^v/s/^v\(.*\)$/\1/g')

ensure_portsnap

pushd $PORT
    sed -i "" -e "s/PORTVERSION=.*/PORTVERSION=	$TAG_VER/g" Makefile
    rm -f distinfo
    make makesum
    git add distinfo
    git add Makefile
    git commit -m "chore: update ${PORT} for ${VERSION}"
    git push
popd

sudo -i bash -c portshaker -v

tree=personal
jail=znet13-1
list=/home/zach/Code/personal-ports/personal.list

sudo poudriere bulk -f $list -p $tree -j $jail
