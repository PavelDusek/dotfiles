#!/usr/bin/env python3
# coding: utf-8
from plyer import notification
import argparse

parser = argparse.ArgumentParser(
        prog="Notification Pool",
        description="Simple utility to show notification on the screen.",
        epilog = "Different arguments."
)
parser.add_argument("message")
parser.add_argument("-T", "--title", default="Notification!", help="title")
parser.add_argument("-t", "--time", type=int, default=10, help="time to show notification in seconds")
args = parser.parse_args()

notification.notify(title=args.title, message = args.message, timeout= args.time)
