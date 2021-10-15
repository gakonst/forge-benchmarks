#!/bin/bash
set +x

# TODO: Add logic for running with all
REPO=$1
TESTDATA=testdata

DIR=`pwd`

# override if needed
# function dapp() {
#     cargo r --manifest-path ../../../dapptools-rs/Cargo.toml --bin dapp $@
# }

function runTests() {
    cd $TESTDATA/$1

    # run any installation step if needed
    make install || true

    dapp update
    # always have the ffi flag turned on
    # dapp test --ffi
    dapp test --ffi

    cd -
}

runTests $REPO
