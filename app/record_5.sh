#!/bin/bash -

name=$(date +%s)

default=$(pactl get-default-source)
monitor="alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink.monitor"
pacmd "set-default-source $monitor"
sox -d -r 48k ~/rec/$name.mp3 trim 0:0 0:5
pacmd "set-default-source $default"

