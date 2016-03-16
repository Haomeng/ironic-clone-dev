#/bin/bash

# input:  iscsi disk
# output: qcow2 image

#steps:
# 1. remove conf-drive
# 2. run 'virt-sysprep'

echo -e "d\n2\nw\n" | fdisk $1

#copy disk
dd of=$1 if=$2 bs=1M

#clean
virt-sysprep $1
