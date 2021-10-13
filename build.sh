#!/bin/bash
set +x

REPO=$1
TESTDATA=testdata

DIR=`pwd`

function buildRepo() {
    cd $TESTDATA/$1
    # install npm deps if any
    make npm || true
    # patch deps if any
    make patch || true
    cd -
}

buildRepo $REPO
