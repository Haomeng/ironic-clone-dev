#/bin/bash

# input: <target-ip> <iqn>"
# output: iscsi disk dev name

iscsiadm -m discovery -t sendtargets -p $1
ls -l /dev/ | awk '{print $10}' > /tmp/fdisk-list-orig
iscsiadm -m node -T $2 -p $1 -l
ls -l /dev/ | awk '{print $10}' > /tmp/fdisk-list-orig-iscsi
comm /tmp/fdisk-list-orig /tmp/fdisk-list-orig-iscsi -3 2>/dev/null | sed 's/^\t//'


