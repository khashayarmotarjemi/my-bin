#!/bin/bash

# Duration of each note in seconds
DURATION=0.5

# Play the C note
play -n synth $DURATION sin C fade h 0.01 $DURATION 0.01
# sleep 0.2
# Play the E note
play -n synth $DURATION sin E fade h 0.01 $DURATION 0.01
# sleep 0.2
# Play the G note
play -n synth $DURATION sin G fade h 0.01 $DURATION 0.01
