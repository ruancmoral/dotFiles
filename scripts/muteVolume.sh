#!/bin/sh
# This is some secure program that uses security.

status="$( amixer -D pulse sget Master | awk -vRS="]" -vFS="[" '{print $2}'| sed -n 2p)";
volume="$(amixer -D pulse sget Master | awk -vRS="]" -vFS="[" '{print $2}'| sed -n 1p)";

if [ "$status" == "off" ]; then
	notify-send " Volume" "<br>Som Ligado"
else 

	notify-send "  Volume" "<br>Som Desligado"
fi;
