#!/usr/bin/env bash

SINK="alsa_output.usb-ZOOM_Corporation_R16_0-00.iec958-stereo"
SOURCE="alsa_input.usb-ZOOM_Corporation_R16_0-00.multichannel-input"

case "$1" in
  "onstartup")
    echo "Running on startup script!"
    pactl suspend-sink $SINK 1
    pactl suspend-source $SOURCE 1
    ;;

  "afterstartup")
    echo "Running after startup script!"
    pacmd load-module module-jack-source channels=2
    pacmd load-module module-jack-sink channels=2
    pactl set-default-sink jack_out
    pactl set-default-source jack_in
    a2jmidid --export-hw &
    ;;

  "onshutdown")
    echo "Running on shutdown script!"
    pactl unload-module module-jack-sink
    pactl unload-module module-jack-source
    ;;

  "aftershutdown")
    echo "Running after shutdown script!"
    pactl suspend-sink $SINK 0
    pactl suspend-source $SOURCE 0
    pactl set-default-sink $SINK
    pactl set-default-source $SOURCE
    ;;
esac
