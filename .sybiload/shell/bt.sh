#!/bin/sh

if (hciconfig | grep UP); then
    connman disable bluetooth
else
    connman enable bluetooth
fi
