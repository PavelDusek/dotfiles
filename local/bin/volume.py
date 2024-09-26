#!/usr/bin/env python3
# coding: utf-8
import argparse
import subprocess
import re

parser = argparse.ArgumentParser( prog = "volume.py", description = "Set PulseAudio volume using pactl", epilog="Version 1.0, Pavel Dusek" )
parser.add_argument('-s', '--set', type=int, help="set volume in percent")
parser.add_argument('-a', '--add', type=int, help="add a number to volume in percent, use negative number to decrease volume, e.g. -a -10 to decrease by 10 percent")
args = parser.parse_args()

#TODO get output sink
# Get volume
get_volume = re.compile(r"(\d+)%")
pa = subprocess.check_output(
        [
            "pactl",
            "get-sink-volume",
            "alsa_output.pci-0000_01_00.1.hdmi-stereo"
        ])
volume = get_volume.search(pa.decode("utf-8"))
volume = int(volume.group(1))


# Set volume
if args.set:
    pa = subprocess.check_output(
        [
            "pactl",
            "set-sink-volume",
            "alsa_output.pci-0000_01_00.1.hdmi-stereo",
            f"{args.set}%",
        ])
elif args.add:
    volume = volume + args.add
    pa = subprocess.check_output(
        [
            "pactl",
            "set-sink-volume",
            "alsa_output.pci-0000_01_00.1.hdmi-stereo",
            f"{volume}%",
        ])
else:
    print(f"{volume}%")
