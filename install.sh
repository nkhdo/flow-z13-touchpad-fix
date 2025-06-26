#!/bin/bash
if [ ! -d "/etc/scripts" ]; then
	mkdir /etc/scripts
fi
cp ./touchpad-fix.sh /etc/scripts/
cp ./99-touchpad-fix.rules /etc/udev/rules.d/
echo Reboot required to activate udev rule

