#/bin/bash

#input: <lun-name> <iqn> <size-in-M> <lun-number>"
#output: iscsi target

tgtadm --lld iscsi --op new --mode target --tid 1 --targetname $2
dd if=/dev/zero of=/var/$1 bs=1M count=$3
tgtadm --lld iscsi --op new --mode logicalunit --tid 1 --lun $4 -b /var/$1
tgtadm --lld iscsi --op bind --mode target --tid 1 -I ALL
