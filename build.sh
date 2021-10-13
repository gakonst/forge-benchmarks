#!/bin/bash
set +x

REPO=$1
TESTDATA=testdata

DIR=`pwd`

function buildRepo() {
    cd $TESTDATA/$1
    make
    cd -
}

buildRepo $REPO
