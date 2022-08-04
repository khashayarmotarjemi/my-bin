#!/bin/bash -
#===============================================================================
#
#          FILE: stop_jack.sh
#
#         USAGE: stops jack and switches back to ALSA 
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: khashayarmotarjemi, 
#  ORGANIZATION: 
#       CREATED: 08/01/2022 09:27:54 PM
#      REVISION:  ---
#===============================================================================

killall -9 jackdbus
killall -9 qjackctl
