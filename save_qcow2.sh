#/bin/bash

#$1=input img
#$2=output img

#convert raw to qcow2 format
qemu-img convert -f raw $1 -c -O qcow2 $2

