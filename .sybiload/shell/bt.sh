#!/bin/sh

if (hciconfig | grep UP); then
    connmanctl disable bluetooth
else
    connmanctl enable bluetooth
fi
