#!/bin/sh

if ! mountpoint -q /run/media/shepard/LUKS; then
    sudo cryptsetup luksOpen /dev/sdc luks
    sudo mount /dev/mapper/luks /run/media/shepard/LUKS
else
    sudo umount /run/media/shepard/LUKS
    sudo cryptsetup luksClose /dev/mapper/luks
fi
