# Dapptools Benchmarks & Integration Tests

## Motivation

This repository is used for integration testing [turbodapp](https://github.com/gakonst/dapptools-rs/) with
common dapptools repositories, to ensure that it's compatible with the test cases in them,
e.g. usage of HEVM cheatcodes, proper forking mode integration, fuzzing etc.

This repository is also used as a testbed for comparing performance between  and [dapptools](https://github.com/dapphub/dapptools/).

## How to run?

1. Make sure turbodapp & dapptools are installed
1. Make sure dapptools is installed
1. Run `./test.sh $REPO_NAME`, e.g. `./test.sh LootLoose`. If no argument is provided,
it'll iterate over all repos under `testdata` and run all tests

## Repositories Included

See the submodules linked in the [`testdata/`](https://github.com/gakonst/dapptools-benchmarks/tree/master/testdata) folder.

## Adding a new repository

We use git submodules (I know I know submodules suck feel free to recommend a working alternative),
you can add a new one via: `./add_test.sh $URL`
