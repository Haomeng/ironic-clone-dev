#/bin/bash

#copy disk

#input: <source-disk> <target-disk>

dd if=$1 of=$2 bs=1M
