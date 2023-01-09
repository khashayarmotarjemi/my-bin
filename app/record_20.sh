#!/bin/bash -
#===============================================================================
#
#          FILE: record_20.sh
#
#         USAGE: ./record_20.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 10/13/2022 07:43:15 PM
#      REVISION:  ---
#===============================================================================

name=$(date +%s)

default=$(pactl get-default-source)
monitor="alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink.monitor"
pacmd "set-default-source $monitor"
sox -d -r 48k ~/rec/$name.mp3 trim 0:0 0:20
pacmd "set-default-source $default"

