#!/usr/bin/env bash

STR=$(ls -l /dev/disk/by-label|grep UVE_|sed s,../,,g)
ARRAY=(${STR})

#ドライブは配列の10番
INSTMED="/dev/${ARRAY[10]}"

mkdir /run/archiso/bootmnt
mount ${INSTMED} /run/archiso/bootmnt

systemctl disable univabootmnt
