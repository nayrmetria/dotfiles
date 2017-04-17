#!/bin/bash

if [[ -d "/sys/class/power_supply/BAT1" ]]; then
		echo `sh ~/i3blocks/battery` `acpi | grep -oE "[[:digit:]]*%"` - `cat /sys/class/power_supply/BAT0/status` - `perl ~/i3blocks/battery | grep -oE "[[:digit:]]*:[[:digit:]]*"` 
else
		echo "Battery"
fi

