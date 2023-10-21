#!/bin/bash

# Duration of each note in seconds
DURATION=0.5

play -n synth $DURATION sin C fade h 0.01 $DURATION 0.01

play -n synth $DURATION sin D fade h 0.01 $DURATION 0.01

play -n synth $DURATION sin E fade h 0.01 $DURATION 0.01

play -n synth $DURATION sin G fade h 0.01 $DURATION 0.01

