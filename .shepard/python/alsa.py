#!/usr/bin/env python3

import alsaaudio
import argparse

cran = 6

parser = argparse.ArgumentParser(description='Set the alsa volume based on user inputs.')
group = parser.add_mutually_exclusive_group()

group.add_argument("-t", "--toggle", help="mute or unmute volume", action='store_true')
group.add_argument("-i", "--increase", help="increase volume", action='store_true')
group.add_argument("-d", "--decrease", help="decrease volume", action='store_true')

args = parser.parse_args()

master = alsaaudio.Mixer('Master')
speaker = alsaaudio.Mixer('Speaker')

if args.toggle:
    speaker.setmute(not speaker.getmute()[0])
    master.setmute(not master.getmute()[0])
elif args.increase:
    vol = master.getvolume()[0]

    if 100 - vol < cran:
        master.setvolume(100)
    else:
        master.setvolume(vol + cran)

elif args.decrease:
    vol = master.getvolume()[0]

    if vol < cran:
        master.setvolume(0)
    else:
        master.setvolume(vol - cran)
