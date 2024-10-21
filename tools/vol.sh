#! /bin/bash


pavucontrol &

sleep 2

wmctrl -r "PulseAudio Volume Control" -e 2100,100,900,900

