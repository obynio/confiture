#!/bin/sh

if (hciconfig | grep UP); then
    echo "power off" | bluetoothctl &
else
    echo "power on" | bluetoothctl & 
fi

