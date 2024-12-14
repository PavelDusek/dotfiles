#!/usr/bin/env python3
# coding: utf-8
import subprocess
import json

def get_kb_layout( name: str ) -> str:
    hypr = subprocess.check_output(
        [
            "hyprctl",
            "devices",
            "-j",
        ]
    )
    js = json.loads(hypr)

    for keyboard in js['keyboards']:
        if keyboard['name'] == name:
            return keyboard["active_keymap"]

if __name__ == "__main__":
    layout = get_kb_layout(name = "abbahome")
    print(layout)
