#!/bin/bash -
#===============================================================================
#
#          FILE: are_we_jacked.sh
#
#         USAGE: ./are_we_jacked.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/01/2022 09:57:00 PM
#      REVISION:  ---
#===============================================================================

res=$(pgrep -x "jackdbus")

if [ -z "$res" ]
then
    echo "ALSA"
else
    echo "JACK"
fi
