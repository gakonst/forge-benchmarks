#!/bin/bash
set +x

# TODO: Add logic for running with all
REPO=$1
TESTDATA=testdata

DIR=`pwd`

function runTests() {
    cd $TESTDATA/$1
    # assumes the existence of a remappings.txt
    export DAPP_REMAPPINGS=$(cat remappings.txt)

    # always have the ffi flag turned on
    # dapp test --ffi
    dapp test --ffi
    cd -
}

runTests $REPO
