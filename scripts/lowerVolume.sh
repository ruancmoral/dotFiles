#!/bin/sh



volum="$(  amixer -D pulse sget Master | tail -n1 | cut -d '[' -f2 | cut -d ']' -f1)"
notify-send "  Volume" "<br>Volume atual : $volum"



