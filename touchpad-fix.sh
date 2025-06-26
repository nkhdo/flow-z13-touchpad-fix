#!/bin/bash
touchpadID=$(sudo dmesg | grep "asus 0003:0B05:1A30.* USB HID v1.10 Mouse" | grep -o "0003:0B05:1A30\.[0-9,A-F]*" | tail -1)
echo -n "$touchpadID" > /sys/bus/hid/drivers/asus/unbind
echo -n "$touchpadID" > /sys/bus/hid/drivers/hid-multitouch/bind
