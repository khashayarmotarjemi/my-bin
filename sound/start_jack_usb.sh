#!/bin/bash

jack_control start
jack_control ds alsa
jack_control dps device hw:USB
jack_control dps rate 48000
jack_control dps nperiods 2
jack_control dps period 256
sleep 2 
qjackctl &
