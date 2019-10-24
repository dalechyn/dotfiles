#!/bin/bash

bfile="/sys/class/leds/asus::kbd_backlight/brightness"
maxbfile="/sys/class/leds/asus::kbd_backlight/max_brightness"

if [[ $1 == "inc" ]]; then
	if [ $(cat $bfile) -lt $(cat $maxbfile) ]; then
		echo $(($(cat $bfile) + 1 )) > $bfile
	fi
elif [[ $1 == "dec" ]]; then
	if [ $(cat $bfile) -gt '0' ]; then
		echo $(($(cat $bfile) - 1 )) > $bfile
	fi
fi

