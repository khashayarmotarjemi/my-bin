#!/bin/bash

# Duration of each note in seconds
DURATION=0.5

# Play the C note
play -n synth $DURATION sin C fade h 0.01 $DURATION 0.01
