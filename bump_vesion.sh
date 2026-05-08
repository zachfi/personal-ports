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

    # If the Makefile pins a GIT_COMMIT (used to populate the ldflags
    # baked into the binary), resolve the tag to a commit SHA via GitHub
    # so `<binary> version` reports the real commit instead of the
    # `$Format:%H$` placeholder shipped in the source tarball.
    if grep -q '^GIT_COMMIT=' Makefile; then
        gh_account=$(awk -F= '/^GH_ACCOUNT=/{gsub(/[ \t]/,"",$2); print $2}' Makefile)
        gh_project=$(awk -F= '/^GH_PROJECT=/{gsub(/[ \t]/,"",$2); print $2}' Makefile)
        # Tags can be annotated (point to a tag object) or lightweight
        # (point straight at a commit); follow one indirection if needed.
        ref_json=$(curl -fsSL "https://api.github.com/repos/${gh_account}/${gh_project}/git/refs/tags/v${TAG_VER}")
        obj_type=$(printf '%s' "$ref_json" | sed -n 's/.*"type": "\([^"]*\)".*/\1/p' | head -1)
        obj_sha=$(printf '%s' "$ref_json"  | sed -n 's/.*"sha": "\([^"]*\)".*/\1/p'  | head -1)
        if [ "$obj_type" = "tag" ]; then
            tag_json=$(curl -fsSL "https://api.github.com/repos/${gh_account}/${gh_project}/git/tags/${obj_sha}")
            commit_sha=$(printf '%s' "$tag_json" | awk '/"object":/{f=1} f && /"sha":/{gsub(/[",]/,""); print $2; exit}')
        else
            commit_sha=$obj_sha
        fi
        if [ -n "$commit_sha" ]; then
            sed -i "" -e "s/^GIT_COMMIT=.*/GIT_COMMIT=	${commit_sha}/" Makefile
        fi
    fi

    rm -f distinfo
    make makesum
    git add distinfo
    git add Makefile
    git commit -m "chore: update ${PORT} for ${VERSION}"
    git push
popd

sudo -i bash -c portshaker -v

tree=personal
jail=pkg14-3
list=/home/zach/Code/personal-ports/personal.list

#sudo poudriere bulk -f $list -p $tree -j $jail
sudo poudriere bulk -j $jail sysutils/nodemanager
